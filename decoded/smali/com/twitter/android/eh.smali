.class final Lcom/twitter/android/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eh;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/eh;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->d:Lcom/twitter/android/client/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/eh;->a:Lcom/twitter/android/HomeTabActivity;

    iget-object v0, v0, Lcom/twitter/android/HomeTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->i()Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/eh;->a:Lcom/twitter/android/HomeTabActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/HomeTabActivity;->showDialog(I)V

    :cond_0
    return-void
.end method
