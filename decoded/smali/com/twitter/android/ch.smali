.class final Lcom/twitter/android/ch;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private synthetic b:Lcom/twitter/android/ConversationActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ConversationActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/ch;->b:Lcom/twitter/android/ConversationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/twitter/android/ch;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ch;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/twitter/android/ch;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/provider/ah;

    iget-wide v0, p0, Lcom/twitter/android/provider/ah;->r:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ch;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bv;

    invoke-direct {v1, v0}, Lcom/twitter/android/bv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/ch;->b:Lcom/twitter/android/ConversationActivity;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/a;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    iget-object v2, v0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/ch;->b:Lcom/twitter/android/ConversationActivity;

    iget-object v3, v3, Lcom/twitter/android/ConversationActivity;->h:Lcom/twitter/android/client/i;

    iget v3, v3, Lcom/twitter/android/client/i;->d:I

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(I)V

    iget-object v0, v0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {p0, p1}, Lcom/twitter/android/ch;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/provider/ah;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ah;)V

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bv;

    move-object v1, p2

    goto :goto_0
.end method
