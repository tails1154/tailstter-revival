.class final Lcom/twitter/android/bm;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SignUpActivity;Lcom/twitter/android/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bm;-><init>(Lcom/twitter/android/SignUpActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SignUpActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sparse-switch p3, :sswitch_data_0

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iput-object v1, v0, Lcom/twitter/android/SignUpActivity;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->b()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    const-class v2, Lcom/twitter/android/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    const-class v2, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    iget-object v2, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "password"

    iget-object v2, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v2, v2, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SignUpActivity;->finish()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v0, v2}, Lcom/twitter/android/SignUpActivity;->dismissDialog(I)V

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->a:Landroid/widget/EditText;

    :goto_1
    if-eqz p6, :cond_6

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->b:Landroid/widget/EditText;

    :cond_2
    :goto_2
    if-eqz p5, :cond_7

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->c:Landroid/widget/EditText;

    :cond_3
    :goto_3
    if-eqz p7, :cond_8

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->d:Landroid/widget/EditText;

    :cond_4
    :goto_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    const v2, 0x7f0e0061

    invoke-virtual {v1, v2}, Lcom/twitter/android/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v0, v0, Lcom/twitter/android/SignUpActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, v1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iget-object v1, v1, Lcom/twitter/android/SignUpActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    iput-object p8, v0, Lcom/twitter/android/SignUpActivity;->i:Ljava/lang/String;

    new-instance v0, Lcom/twitter/android/dt;

    iget-object v1, p0, Lcom/twitter/android/bm;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {v0, v1}, Lcom/twitter/android/dt;-><init>(Lcom/twitter/android/SignUpActivity;)V

    new-array v1, v2, [Ljava/lang/String;

    aput-object p9, v1, v3

    invoke-virtual {v0, v1}, Lcom/twitter/android/dt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x193 -> :sswitch_2
        0x19c -> :sswitch_3
    .end sparse-switch
.end method
