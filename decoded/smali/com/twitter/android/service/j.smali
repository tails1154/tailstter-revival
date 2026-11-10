.class final Lcom/twitter/android/service/j;
.super Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/service/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/service/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;)V

    return-void
.end method
