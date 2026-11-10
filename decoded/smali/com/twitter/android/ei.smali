.class final Lcom/twitter/android/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/HomeTabActivity;

    const-class v2, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v2, v2, Lcom/twitter/android/HomeTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/HomeTabActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTabActivity;->a()V

    goto :goto_0
.end method
