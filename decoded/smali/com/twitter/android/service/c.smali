.class final Lcom/twitter/android/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:I

.field private synthetic c:Lcom/twitter/android/service/TwitterService;


# direct methods
.method public constructor <init>(Lcom/twitter/android/service/TwitterService;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/service/c;->c:Lcom/twitter/android/service/TwitterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/service/c;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/twitter/android/service/c;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/twitter/android/service/c;->c:Lcom/twitter/android/service/TwitterService;

    iget-object v1, p0, Lcom/twitter/android/service/c;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/twitter/android/service/c;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/service/TwitterService;->a(Landroid/content/Intent;I)V

    return-void
.end method
