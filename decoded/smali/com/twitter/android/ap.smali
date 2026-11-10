.class final Lcom/twitter/android/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetListActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/TweetListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/TweetListActivity;

    iget-object v1, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/TweetListActivity;

    iget-object v1, v1, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/ap;->a:Lcom/twitter/android/TweetListActivity;

    iget-object v2, v2, Lcom/twitter/android/TweetListActivity;->e:Lcom/twitter/android/provider/ah;

    iget-wide v2, v2, Lcom/twitter/android/provider/ah;->A:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/i;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListActivity;->d(Ljava/lang/String;)V

    return-void
.end method
