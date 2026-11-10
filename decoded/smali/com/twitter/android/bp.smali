.class final Lcom/twitter/android/bp;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/twitter/android/SearchTweetsActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/SearchTweetsActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/bp;->b:Lcom/twitter/android/SearchTweetsActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/bp;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/bp;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/bv;

    iget-object v1, p0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/TweetView;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bv;

    iget-object v1, v0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/bp;->b:Lcom/twitter/android/SearchTweetsActivity;

    iget-object v2, v2, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/client/i;

    iget v2, v2, Lcom/twitter/android/client/i;->d:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(I)V

    iget-object v0, v0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    new-instance v1, Lcom/twitter/android/provider/aj;

    invoke-direct {v1, p3}, Lcom/twitter/android/provider/aj;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ah;)V

    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bv;

    invoke-direct {v1, v0}, Lcom/twitter/android/bv;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/bp;->b:Lcom/twitter/android/SearchTweetsActivity;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/bp;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
