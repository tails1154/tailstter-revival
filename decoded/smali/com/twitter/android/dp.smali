.class final Lcom/twitter/android/dp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/PostActivity;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->c()V

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->b(Z)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/dp;->a:Lcom/twitter/android/PostActivity;

    iput-boolean v1, v0, Lcom/twitter/android/PostActivity;->b:Z

    return-void
.end method
