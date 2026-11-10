.class final Lcom/twitter/android/client/b;
.super Lcom/twitter/android/service/k;


# instance fields
.field private synthetic a:Lcom/twitter/android/client/i;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/i;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/b;->a:Lcom/twitter/android/client/i;

    invoke-direct {p0}, Lcom/twitter/android/service/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/b;->a:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/i;->a(Landroid/content/Intent;)V

    return-void
.end method
