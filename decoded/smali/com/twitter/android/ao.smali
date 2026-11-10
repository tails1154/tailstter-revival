.class final Lcom/twitter/android/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/twitter/android/provider/ah;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Landroid/content/Context;

.field private synthetic e:Lcom/twitter/android/TweetListActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListActivity;ZLcom/twitter/android/provider/ah;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    iput-boolean p2, p0, Lcom/twitter/android/ao;->a:Z

    iput-object p3, p0, Lcom/twitter/android/ao;->b:Lcom/twitter/android/provider/ah;

    iput-object p4, p0, Lcom/twitter/android/ao;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/ao;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/twitter/android/ao;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    iget-object v1, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    iget-object v1, v1, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/ao;->b:Lcom/twitter/android/provider/ah;

    iget-wide v2, v2, Lcom/twitter/android/provider/ah;->A:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/i;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListActivity;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    iget-object v1, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    iget-object v1, v1, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/ao;->b:Lcom/twitter/android/provider/ah;

    iget-wide v2, v2, Lcom/twitter/android/provider/ah;->n:J

    iget-object v4, p0, Lcom/twitter/android/ao;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/i;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListActivity;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ao;->d:Landroid/content/Context;

    new-instance v1, Lcom/twitter/android/service/g;

    sget-object v2, Lcom/twitter/android/service/l;->s:Lcom/twitter/android/service/l;

    invoke-direct {v1, v2}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ao;->d:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    const v3, 0x7f090004

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/twitter/android/ao;->b:Lcom/twitter/android/provider/ah;

    iget-object v6, v6, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/twitter/android/ao;->b:Lcom/twitter/android/provider/ah;

    iget-object v6, v6, Lcom/twitter/android/provider/ah;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/twitter/android/TweetListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.quote"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ao;->e:Lcom/twitter/android/TweetListActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/TweetListActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/twitter/android/ao;->d:Landroid/content/Context;

    new-instance v1, Lcom/twitter/android/service/g;

    sget-object v2, Lcom/twitter/android/service/l;->u:Lcom/twitter/android/service/l;

    invoke-direct {v1, v2}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;)V

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto :goto_0
.end method
