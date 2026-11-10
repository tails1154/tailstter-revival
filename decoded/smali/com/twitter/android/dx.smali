.class final Lcom/twitter/android/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/content/Context;

.field private synthetic c:Lcom/twitter/android/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileActivity;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    iput-boolean p2, p0, Lcom/twitter/android/dx;->a:Z

    iput-object p3, p0, Lcom/twitter/android/dx;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/twitter/android/dx;->a:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dx;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/dx;->a:Z

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dx;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/ListsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    iget-object v2, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    iget-object v2, v2, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "inquire_user_id"

    iget-object v2, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    iget-wide v2, v2, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    iget-boolean v0, v0, Lcom/twitter/android/ProfileActivity;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/dx;->c:Lcom/twitter/android/ProfileActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
