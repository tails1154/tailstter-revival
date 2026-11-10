.class final Lcom/twitter/android/eg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/HomeTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/eg;->a:Lcom/twitter/android/HomeTabActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/twitter/android/client/f;->b(Landroid/content/Context;I)V

    return-void
.end method
