.class final Lcom/twitter/android/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private synthetic b:Lcom/twitter/android/widget/RefreshableListView;


# direct methods
.method private constructor <init>(Lcom/twitter/android/widget/RefreshableListView;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/widget/RefreshableListView;Lcom/twitter/android/widget/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/widget/b;-><init>(Lcom/twitter/android/widget/RefreshableListView;)V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 6

    const/4 v1, 0x0

    iput v1, p0, Lcom/twitter/android/widget/b;->a:I

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    const/16 v5, 0x1c2

    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    iget-object v0, v0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->timePassed()I

    move-result v1

    const/16 v2, 0x1c2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/twitter/android/widget/b;->a:I

    sub-int/2addr v2, v0

    iput v0, p0, Lcom/twitter/android/widget/b;->a:I

    iget-object v3, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v3, v2}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    iget-object v2, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v2}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    iget-object v2, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v2}, Lcom/twitter/android/widget/RefreshableListView;->d()V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/RefreshableListView;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v1, v4, v0}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/widget/b;->b:Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    goto :goto_2
.end method
