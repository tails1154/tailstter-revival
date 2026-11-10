.class final Lcom/twitter/android/cr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/UsersActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cr;->a:Lcom/twitter/android/UsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/cr;->a:Lcom/twitter/android/UsersActivity;

    iget-object v0, v0, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "followers"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/cr;->a:Lcom/twitter/android/UsersActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    if-lez v0, :cond_1

    new-array v1, v0, [J

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/cr;->a:Lcom/twitter/android/UsersActivity;

    iget-object v2, v2, Lcom/twitter/android/UsersActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/cr;->a:Lcom/twitter/android/UsersActivity;

    iget-object v0, v0, Lcom/twitter/android/UsersActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->b([J)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/cr;->a:Lcom/twitter/android/UsersActivity;

    invoke-virtual {v0}, Lcom/twitter/android/UsersActivity;->finish()V

    return-void
.end method
