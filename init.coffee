# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

atom.commands.add 'atom-text-editor',
    'latex:toggle-bold', ->
        return unless editor = atom.workspace.getActiveTextEditor()
        editor.selectWordsContainingCursors()
        selection = editor.getLastSelection()
        selection.insertText("\\textbf{#{selection.getText()}}")
        if not editor.getSelectedText()
             editor.moveLeft()

atom.commands.add 'atom-text-editor',
    'latex:toggle-italic', ->
        return unless editor = atom.workspace.getActiveTextEditor()
        editor.selectWordsContainingCursors()
        selection = editor.getLastSelection()
        selection.insertText("\\textit{#{selection.getText()}}")
        if not editor.getSelectedText()
             editor.moveLeft()
