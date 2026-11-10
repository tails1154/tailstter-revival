.class final Lcom/twitter/android/dc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dc;->a:Lcom/twitter/android/TweetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dc;->a:Lcom/twitter/android/TweetActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/dc;->a:Lcom/twitter/android/TweetActivity;

    iget-object v1, v1, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-wide v1, v1, Lcom/twitter/android/provider/ah;->A:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/i;->c(J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/dc;->a:Lcom/twitter/android/TweetActivity;

    invoke-virtual {v0}, Lcom/twitter/android/TweetActivity;->finish()V

    return-void
.end method
