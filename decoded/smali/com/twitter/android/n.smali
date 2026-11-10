.class final Lcom/twitter/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/twitter/android/DialogActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/DialogActivity;J)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/DialogActivity;

    iput-wide p2, p0, Lcom/twitter/android/n;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/DialogActivity;

    iget-object v0, v0, Lcom/twitter/android/DialogActivity;->a:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/n;->a:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(JZ)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/n;->b:Lcom/twitter/android/DialogActivity;

    invoke-virtual {v0}, Lcom/twitter/android/DialogActivity;->finish()V

    return-void
.end method
