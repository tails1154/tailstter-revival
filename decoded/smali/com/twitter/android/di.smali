.class public final Lcom/twitter/android/di;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private final a:Z

.field private final b:Ljava/util/ArrayList;

.field private final c:Lcom/twitter/android/widget/a;

.field private final d:Lcom/twitter/android/client/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/twitter/android/widget/a;Lcom/twitter/android/client/i;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/di;->b:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/twitter/android/di;->a:Z

    iput-object p3, p0, Lcom/twitter/android/di;->c:Lcom/twitter/android/widget/a;

    iput-object p4, p0, Lcom/twitter/android/di;->d:Lcom/twitter/android/client/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/di;->b:Ljava/util/ArrayList;

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

    const/16 v0, 0x16

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bv;

    iget-object v1, v0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v2, p0, Lcom/twitter/android/di;->d:Lcom/twitter/android/client/i;

    iget v2, v2, Lcom/twitter/android/client/i;->d:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(I)V

    iget-object v0, v0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    new-instance v1, Lcom/twitter/android/provider/ah;

    invoke-direct {v1, p3}, Lcom/twitter/android/provider/ah;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ah;)V

    :cond_0
    return-void
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twitter/android/di;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twitter/android/di;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    const/16 v0, 0x16

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bl;

    invoke-direct {v1, p0}, Lcom/twitter/android/bl;-><init>(Lcom/twitter/android/di;)V

    const v2, 0x7f0e0074

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    iput-object p0, v1, Lcom/twitter/android/bl;->a:Landroid/widget/ProgressBar;

    const v2, 0x7f0e0073

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/twitter/android/bl;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f030030

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bv;

    invoke-direct {v1, v0}, Lcom/twitter/android/bv;-><init>(Landroid/view/View;)V

    iget-object v2, v1, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-object v3, p0, Lcom/twitter/android/di;->c:Lcom/twitter/android/widget/a;

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/a;)V

    iget-object v2, v1, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    iget-boolean v3, p0, Lcom/twitter/android/di;->a:Z

    invoke-virtual {v2, v3}, Lcom/twitter/android/widget/TweetView;->a(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/twitter/android/di;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
