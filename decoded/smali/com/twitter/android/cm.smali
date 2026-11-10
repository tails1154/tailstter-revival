.class final Lcom/twitter/android/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/UsersActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cm;->a:Lcom/twitter/android/UsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/cm;->a:Lcom/twitter/android/UsersActivity;

    iget-object v0, v0, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "username"

    iget-object v2, p0, Lcom/twitter/android/cm;->a:Lcom/twitter/android/UsersActivity;

    iget-object v2, v2, Lcom/twitter/android/UsersActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/cm;->a:Lcom/twitter/android/UsersActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/cm;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UsersActivity;->finish()V

    return-void
.end method
