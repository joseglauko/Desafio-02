---

## Detalhes da UI para o Contador de Hábitos Simples

Vamos descrever as três "telas" ou estados principais da UI, mantendo a clareza e a facilidade de uso em mente.

### 1. Tela para Criar (ou Editar) o Hábito

Esta tela é dedicada à configuração do hábito que o usuário deseja monitorar. Ela serve tanto para a primeira vez que o usuário abre o app quanto para quando ele deseja mudar o hábito que está rastreando.

* **Título da Tela:** No topo da `AppBar`, um título claro e conciso como "**Definir Meu Hábito**" ou "**Configurar Hábito**".
* **Campo de Entrada de Texto (`TextField`):**
    * Centralizado na tela, um `TextField` com um bom preenchimento (padding) para facilitar a digitação.
    * **`hintText`:** Essencial para guiar o usuário. Ex: *"Ex: Beber 8 copos de água, Ler 30 minutos, Fazer 10 flexões"*.
    * **`labelText` (Opcional):** Pode ter um rótulo acima do campo, como "Qual hábito você quer contar?".
    * O teclado virtual deve aparecer automaticamente quando o usuário entra nesta tela ou toca no campo.
    * O campo deve ser capaz de exibir o hábito já salvo, se houver um, permitindo que o usuário o edite.
* **Botão de Ação Principal:**
    * Na parte inferior da tela, um `ElevatedButton` grande e chamativo com o texto "**Salvar Hábito**" ou "**Confirmar**".
    * Ao ser pressionado, o texto do `TextField` é salvo na persistência de dados do aplicativo.
    * Após salvar, o usuário é automaticamente redirecionado para a **Tela Principal de Contagem**.
* **Feedback Visual (Opcional):**
    * Um pequeno `SnackBar` (uma mensagem temporária que aparece na parte inferior da tela) pode surgir após o salvamento, com a mensagem: *"Hábito salvo com sucesso!"*.
* **Navegação:**
    * Se o app for aberto pela primeira vez e não houver hábito salvo, o usuário será direcionado diretamente para esta tela.
    * Se já houver um hábito, um ícone de "engrenagem" ou "lápis" na `AppBar` da Tela Principal de Contagem levará o usuário de volta a esta tela para edição.

---

### 2. Tela para Listar os Hábitos (A Tela Principal do App)

Considerando o escopo de **apenas um hábito por vez**, esta tela funciona como a **Tela Principal do Aplicativo**. Ela não "lista" múltiplos hábitos, mas sim exibe o único hábito que está sendo rastreado e suas informações de contagem.

* **Título da `AppBar`:** Pode ser dinâmico, exibindo o **nome do hábito atual** (ex: "Beber Água") ou um título genérico como "**Meu Contador**".
* **Nome do Hábito em Destaque:**
    * Logo abaixo da `AppBar`, o nome do hábito configurado é exibido de forma clara e visível (ex: "Beber 8 copos de água"). Pode ser um `Text` com uma fonte um pouco maior e em negrito para fácil identificação.
    * Ao lado ou abaixo do nome do hábito, um pequeno **ícone de edição** (um lápis ou engrenagem) que, ao ser tocado, leva o usuário de volta à "Tela para Criar/Editar o Hábito".
* **Estado Vazio (Primeiro Uso):**
    * Se o usuário ainda não definiu um hábito (primeiro acesso após a instalação), esta tela deve exibir uma mensagem amigável: *"Parece que você ainda não definiu um hábito. Toque no botão abaixo para começar!"*.
    * Abaixo da mensagem, um `ElevatedButton` com o texto "**Definir Hábito**" que levaria o usuário para a "Tela para Criar/Editar o Hábito".
* **Informação Adicional (Opcional):**
    * Pode-se adicionar um pequeno texto informativo sobre a contagem diária, como *"Contagem diária:"* acima do número do contador.

---

### 3. Tela para Registrar o Count dos Hábitos (A Interação Principal)

Esta é a tela central do aplicativo, onde o usuário interage para registrar o progresso do seu hábito.

* **Título da `AppBar`:** Novamente, pode ser o **nome do hábito** (ex: "Ler 30 Minutos") ou "**Contador Diário**".
* **Contador Principal:**
    * O elemento mais proeminente da tela: o **número atual de vezes** que o hábito foi realizado.
    * Deve ser um `Text` com uma **fonte muito grande**, centralizado vertical e horizontalmente, e talvez com uma cor que o destaque.
    * Ex: `7` (em fonte enorme).
* **Botão de Incremento (`+`):**
    * Um `FloatingActionButton` (FAB) ou um `ElevatedButton` grande e redondo, posicionado no canto inferior direito ou centralizado na parte inferior da tela.
    * Dentro do botão, um **símbolo de mais (`+`)** bem visível ou o texto "**Contar!**" / "**Feito!**".
    * Ao ser pressionado, o número do contador incrementa em `1`.
    * Pode haver uma pequena animação ou feedback visual ao tocar (ex: o número pisca rapidamente ou aumenta de tamanho por um instante).
* **Botão de Reset:**
    * Um `ElevatedButton` ou `TextButton` menor, posicionado em um local secundário, como o canto inferior esquerdo ou como um ícone na `AppBar` (um ícone de "reset" circular).
    * Texto: "**Resetar Diário**".
    * Ao ser pressionado, o contador é zerado para `0`.
    * **Confirmação:** É crucial que, ao tocar no botão de reset, apareça um `AlertDialog` (uma pequena janela pop-up) perguntando: *"Tem certeza que deseja resetar a contagem de hoje?"* com opções "Sim" e "Não" para evitar resets acidentais.
* **Data Atual (Opcional):**
    * Pode-se exibir a data atual na parte superior da tela (abaixo do nome do hábito ou na `AppBar`) para lembrar o usuário que a contagem é diária. Ex: *"Hoje: 31 de maio de 2025"*.

---
