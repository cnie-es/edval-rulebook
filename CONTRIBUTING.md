# Guía de Contribución

¡Gracias por tu interés en contribuir al **EDNEL Rulebook**! Para mantener la calidad y la trazabilidad del proyecto, pedimos a todos los colaboradores que sigan las siguientes normas.

## 📝 Mensajes de Commit (Semantic Commits)

Para facilitar la generación automática del **Changelog** y el versionado semántico, es **obligatorio** seguir la convención [Conventional Commits](https://www.conventionalcommits.org/).

### Formato
```text
<tipo>(<ámbito>): <descripción breve>

[Cuerpo opcional: descripción más detallada]

[Pie opcional: referencias a issues, ej. "Closes #123"]
```

### Tipos permitidos (`<tipo>`)
*   **`feat`**: Una nueva funcionalidad o regla (ej. añadir un nuevo capítulo).
*   **`fix`**: Corrección de errores (ej. corregir una errata o un enlace roto).
*   **`docs`**: Cambios solo en la documentación (ej. README, comentarios).
*   **`style`**: Cambios que no afectan al significado del código/texto (espacios, formato).
*   **`refactor`**: Cambios en la estructura que no añaden reglas ni corrigen errores.
*   **`test`**: Añadir o corregir tests o políticas de prueba.
*   **`chore`**: Tareas de mantenimiento (ej. actualizar .gitignore, dependencias).

### Ejemplos
*   `feat(legal): añadir política de uso para investigación académica`
*   `fix(cap3): corregir referencia circular en el proceso de onboarding`
*   `docs(readme): actualizar instrucciones de contribución`

---

## Proceso de Pull Request (PR)
1.  Asegúrate de que tu PR se refiere a una **Issue** abierta.
2.  Actualiza el índice si has añadido nuevas secciones.
3.  Si modificas una política JSON, verifica que el JSON es válido.
