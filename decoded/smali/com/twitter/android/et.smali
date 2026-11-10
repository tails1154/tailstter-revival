.class final Lcom/twitter/android/et;
.super Lcom/twitter/android/service/k;


# instance fields
.field private synthetic a:Lcom/twitter/android/AuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/AuthenticatorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-direct {p0}, Lcom/twitter/android/service/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "resp_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-virtual {v1, v2}, Lcom/twitter/android/AuthenticatorActivity;->removeDialog(I)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const-string v0, "auth"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lab;

    iget-object v1, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    iget-object v1, v1, Lcom/twitter/android/AuthenticatorActivity;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/AuthenticatorActivity;->a(Lab;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/AuthenticatorActivity;->a(Lab;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Lcom/twitter/android/AuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/et;->a:Lcom/twitter/android/AuthenticatorActivity;

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Lcom/twitter/android/AuthenticatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
