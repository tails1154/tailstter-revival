.class final Lcom/twitter/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SignUpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/l;->a:Lcom/twitter/android/SignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/l;->a:Lcom/twitter/android/SignUpActivity;

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    const v3, 0x7f0e0018

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/twitter/android/SignUpActivity;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/l;->a:Lcom/twitter/android/SignUpActivity;

    invoke-virtual {v1}, Lcom/twitter/android/SignUpActivity;->b_()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
