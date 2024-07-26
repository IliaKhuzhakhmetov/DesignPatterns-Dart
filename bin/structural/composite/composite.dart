abstract interface class TaskComponent {
  String get name;
  int get estimatedTime;
  void addSubtask(TaskComponent task);
  void removeSubtask(TaskComponent task);
  List<TaskComponent> getSubtasks();
  void display([String indent = '']);
}

class Task implements TaskComponent {
  final String _name;

  final int _estimatedTime;

  const Task(String name, int estimatedTime)
      : _name = name,
        _estimatedTime = estimatedTime;

  @override
  String get name => _name;

  @override
  int get estimatedTime => _estimatedTime;

  @override
  void addSubtask(TaskComponent task) {
    throw UnsupportedError('Cannot add subtask to a Task');
  }

  @override
  void removeSubtask(TaskComponent task) {
    throw UnsupportedError('Cannot remove subtask from a Task');
  }

  @override
  List<TaskComponent> getSubtasks() => [];

  @override
  void display([String indent = '']) {
    print('$indent- $name (${estimatedTime}h)');
  }
}

class TaskGroup implements TaskComponent {
  final String _name;
  final List<TaskComponent> _subtasks = [];

  TaskGroup(String name) : _name = name;

  @override
  String get name => _name;

  @override
  int get estimatedTime {
    return _subtasks.fold(0, (sum, task) => sum + task.estimatedTime);
  }

  @override
  void addSubtask(TaskComponent task) {
    _subtasks.add(task);
  }

  @override
  void removeSubtask(TaskComponent task) {
    _subtasks.remove(task);
  }

  @override
  List<TaskComponent> getSubtasks() => List.unmodifiable(_subtasks);

  @override
  void display([String indent = '']) {
    print('$indent+ $name (${estimatedTime} h)');
    for (var subtask in _subtasks) {
      subtask.display('$indent  ');
    }
  }
}

void main() {
  final project = TaskGroup('Mobile App Development');

  final planning = TaskGroup('Planning Phase');
  planning.addSubtask(Task('Market Research', 10));
  planning.addSubtask(Task('Define MVP', 5));

  final design = TaskGroup('Design Phase');
  design.addSubtask(Task('Create Wireframes', 8));
  design.addSubtask(Task('Design UI', 15));

  final development = TaskGroup('Development Phase');
  final frontend = TaskGroup('Frontend Development');
  frontend.addSubtask(Task('Implement UI', 40));
  frontend.addSubtask(Task('Integrate APIs', 20));

  final backend = TaskGroup('Backend Development');
  backend.addSubtask(Task('Design Database', 10));
  backend.addSubtask(Task('Implement Server Logic', 30));

  development.addSubtask(frontend);
  development.addSubtask(backend);

  final testing = TaskGroup('Testing Phase');
  testing.addSubtask(Task('Unit Testing', 15));
  testing.addSubtask(Task('Integration Testing', 10));
  testing.addSubtask(Task('User Acceptance Testing', 5));

  project.addSubtask(planning);
  project.addSubtask(design);
  project.addSubtask(development);
  project.addSubtask(testing);

  project.display();

  print('\nTotal estimated time: ${project.estimatedTime} hours');
}
