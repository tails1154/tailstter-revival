.class final Lcom/twitter/android/aq;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Landroid/widget/ListView;

.field private synthetic d:I

.field private synthetic e:Landroid/view/animation/Animation;

.field private synthetic f:Landroid/view/animation/Animation;

.field private synthetic g:Landroid/view/animation/Animation;

.field private synthetic h:Landroid/view/animation/Animation;

.field private synthetic i:Lcom/twitter/android/TweetListActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListActivity;IILandroid/widget/ListView;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/aq;->i:Lcom/twitter/android/TweetListActivity;

    iput p2, p0, Lcom/twitter/android/aq;->a:I

    iput p3, p0, Lcom/twitter/android/aq;->b:I

    iput-object p4, p0, Lcom/twitter/android/aq;->c:Landroid/widget/ListView;

    iput p5, p0, Lcom/twitter/android/aq;->d:I

    iput-object p6, p0, Lcom/twitter/android/aq;->e:Landroid/view/animation/Animation;

    iput-object p7, p0, Lcom/twitter/android/aq;->f:Landroid/view/animation/Animation;

    iput-object p8, p0, Lcom/twitter/android/aq;->g:Landroid/view/animation/Animation;

    iput-object p9, p0, Lcom/twitter/android/aq;->h:Landroid/view/animation/Animation;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/aq;->a:I

    if-ge v1, v2, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/twitter/android/aq;->b:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v2, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v3, v1

    iget-object v1, p0, Lcom/twitter/android/aq;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v4

    iget-object v0, p0, Lcom/twitter/android/aq;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v4, v0

    iget-object v1, p0, Lcom/twitter/android/aq;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/twitter/android/bv;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/bv;

    if-eqz v1, :cond_3

    sub-int v0, v2, v3

    iget v5, p0, Lcom/twitter/android/aq;->d:I

    if-le v0, v5, :cond_2

    iget-object v0, p0, Lcom/twitter/android/aq;->i:Lcom/twitter/android/TweetListActivity;

    iget-object v2, p0, Lcom/twitter/android/aq;->e:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/aq;->f:Landroid/view/animation/Animation;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListActivity;->a(Lcom/twitter/android/bv;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    sub-int v0, v3, v2

    iget v2, p0, Lcom/twitter/android/aq;->d:I

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/twitter/android/aq;->i:Lcom/twitter/android/TweetListActivity;

    iget-object v2, p0, Lcom/twitter/android/aq;->g:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/twitter/android/aq;->h:Landroid/view/animation/Animation;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/TweetListActivity;->a(Lcom/twitter/android/bv;Landroid/view/animation/Animation;Landroid/view/animation/Animation;ILandroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0
.end method
