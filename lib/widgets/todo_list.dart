import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.taskName,
    required this.isCompleted,
    this.onChanged,
    this.deleteFunction,
  });

  final String taskName;
  final bool isCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    // Utilisation de MediaQuery pour adapter la taille et les paddings à l'écran
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.01,
        horizontal: size.width * 0.05,
      ),
      child: Slidable(
        key: Key(taskName), // Assure que chaque tâche a une clé unique
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.redAccent,
              label: 'Supprimer',
              borderRadius: BorderRadius.circular(15),
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isCompleted
                ? Colors.green.withOpacity(
                    0.7) // Couleur de fond pour les tâches complétées
                : Theme.of(context).colorScheme.primaryContainer,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Row(
            children: [
              // Checkbox avec un effet de transition lors du changement d'état
              Checkbox(
                value: isCompleted,
                onChanged: onChanged,
                side: BorderSide(
                  color: Colors.white.withOpacity(0.7),
                  width: 2,
                ),
                activeColor: Colors.greenAccent,
                checkColor: Colors.white,
              ),
              const SizedBox(
                  width: 10), // Ajout d'espace entre la checkbox et le texte

              // Texte de la tâche
              Expanded(
                child: Text(
                  taskName,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    decoration: isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationColor: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
