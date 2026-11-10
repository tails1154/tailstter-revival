.class final Lcom/twitter/android/ay;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesThreadActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesThreadActivity;Lcom/twitter/android/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/ay;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Lac;)V
    .locals 6

    const v1, 0x7f090099

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_1

    sparse-switch p3, :sswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v5}, Lcom/twitter/android/MessagesThreadActivity;->showDialog(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->b:Landroid/widget/Button;

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_4

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v4}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_1
    :goto_2
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget v0, p5, Lac;->p:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    const-class v2, Lcom/twitter/android/DialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "username"

    iget-object v2, p5, Lac;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    iget-wide v2, p5, Lac;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesThreadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method public final d(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesThreadActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesThreadActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    const v1, 0x7f090126

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v0, v0, Lcom/twitter/android/MessagesThreadActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ay;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/MessagesThreadActivity;->b(Z)V

    :cond_1
    return-void
.end method
