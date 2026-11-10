.class public final Lcom/twitter/android/widget/RefreshableListView;
.super Landroid/widget/ListView;


# instance fields
.field final a:Landroid/widget/Scroller;

.field b:Landroid/widget/RelativeLayout;

.field private c:Lcom/twitter/android/widget/b;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/twitter/android/widget/d;

.field private l:Lcom/twitter/android/widget/h;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/util/ArrayList;

.field private s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010075

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/RefreshableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->s:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->a:Landroid/widget/Scroller;

    new-instance v0, Lcom/twitter/android/widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/widget/b;-><init>(Lcom/twitter/android/widget/RefreshableListView;Lcom/twitter/android/widget/c;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:Lcom/twitter/android/widget/b;

    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->d:Landroid/view/animation/Animation;

    const v0, 0x7f040006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->e:Landroid/view/animation/Animation;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0e0057

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/widget/ProgressBar;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0e0056

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->c:Lcom/twitter/android/widget/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/b;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    return-void
.end method

.method final a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/h;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public final addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    const/16 v2, 0x20

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    move v2, v1

    move-object v1, v7

    :goto_1
    if-nez v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    invoke-interface {v0}, Lcom/twitter/android/widget/h;->j()V

    invoke-interface {v0, v3, v4}, Lcom/twitter/android/widget/h;->c(J)I

    move-result v0

    if-nez v0, :cond_5

    if-ne v2, v5, :cond_4

    if-lez v1, :cond_4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move v2, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    sub-int v0, v2, v5

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_6
    sub-int/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/RefreshableListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    return-void
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->detachViewFromParent(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Lcom/twitter/android/widget/d;

    invoke-virtual {v0}, Lcom/twitter/android/widget/d;->a()V

    :cond_1
    return-void
.end method

.method final c(I)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    return-void
.end method

.method protected final computeVerticalScrollOffset()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v5

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    sub-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v0

    goto :goto_0
.end method

.method protected final computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->isSmoothScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v1, :cond_1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method final d()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getBottomPaddingOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    :cond_0
    return-void
.end method

.method final d(I)Z
    .locals 1

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->q:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final detachViewsFromParent(II)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->detachViewsFromParent(II)V

    goto :goto_0
.end method

.method public final getFooterViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getHeaderViewsCount()I
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    goto :goto_0
.end method

.method protected final layoutChildren()V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView;->m:I

    sub-int v1, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->m:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_3
    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    if-le v1, v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iput p1, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v10, 0x40

    const/4 v9, 0x2

    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/twitter/android/widget/RefreshableListView;->m:I

    sub-int v2, v1, v2

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->m:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    invoke-interface {v0, v8}, Lcom/twitter/android/widget/h;->a(Z)V

    invoke-direct {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    invoke-interface {v0, v7}, Lcom/twitter/android/widget/h;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->e(I)V

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_6

    iget v0, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    sub-int v0, v1, v0

    :goto_2
    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    :goto_4
    iget v5, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    if-lt v1, v5, :cond_9

    move v5, v8

    :goto_5
    iput v1, p0, Lcom/twitter/android/widget/RefreshableListView;->n:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingTop()I

    move-result v1

    if-lt v4, v1, :cond_12

    iget v1, p0, Lcom/twitter/android/widget/RefreshableListView;->o:I

    if-le v2, v1, :cond_12

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0, v10}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    :cond_4
    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawingCacheEnabled(Z)V

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->setChildrenDrawnWithCacheEnabled(Z)V

    if-eqz v3, :cond_b

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->a(I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->invalidate()V

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_a

    if-eqz v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    invoke-interface {v0}, Lcom/twitter/android/widget/h;->h()V

    :cond_5
    :goto_6
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    move v0, v8

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_3

    :cond_8
    move v4, v7

    goto :goto_4

    :cond_9
    move v5, v7

    goto :goto_5

    :cond_a
    if-nez v5, :cond_5

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/twitter/android/widget/RefreshableListView;->c(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->h:Landroid/widget/TextView;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    invoke-interface {v0}, Lcom/twitter/android/widget/h;->i()V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getDividerHeight()I

    move-result v0

    sub-int v0, v4, v0

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->d(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v1, v7, v2}, Lcom/twitter/android/widget/RefreshableListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    invoke-virtual {p0, v9}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    move v3, v8

    :goto_8
    if-eqz v3, :cond_10

    iget v4, p0, Lcom/twitter/android/widget/RefreshableListView;->p:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_9
    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    :goto_a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getListPaddingLeft()I

    move-result v5

    if-eqz v3, :cond_11

    add-int/2addr v2, v5

    add-int v3, v0, v4

    invoke-virtual {v1, v5, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_b
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Lcom/twitter/android/widget/d;

    invoke-virtual {v0}, Lcom/twitter/android/widget/d;->a()V

    goto/16 :goto_6

    :cond_d
    invoke-virtual {p0, v1, v7, v2, v8}, Lcom/twitter/android/widget/RefreshableListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0, v8}, Lcom/twitter/android/widget/RefreshableListView;->b(I)V

    goto :goto_7

    :cond_e
    move v3, v7

    goto :goto_8

    :cond_f
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_9

    :cond_10
    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_a

    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->c()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/twitter/android/widget/d;

    iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->r:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView;->s:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/twitter/android/widget/d;-><init>(Lcom/twitter/android/widget/RefreshableListView;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Lcom/twitter/android/widget/d;

    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->l:Lcom/twitter/android/widget/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/twitter/android/widget/RefreshableListView;->setFooterDividersEnabled(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/twitter/android/widget/RefreshableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v1, 0x7f0e0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/RefreshableListView;->i:Landroid/view/View;

    const v1, 0x7f0e0044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->j:Landroid/widget/TextView;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Lcom/twitter/android/widget/d;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    iput-object v3, p0, Lcom/twitter/android/widget/RefreshableListView;->k:Lcom/twitter/android/widget/d;

    goto :goto_0
.end method
