.class public Lcom/twitter/android/widget/TweetView;
.super Landroid/view/View;


# static fields
.field private static final a:[I

.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final A:I

.field private final B:I

.field private final C:I

.field private final D:I

.field private final E:I

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Landroid/graphics/drawable/Drawable;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:J

.field private O:Ljava/util/ArrayList;

.field private d:Lcom/twitter/android/provider/ah;

.field private e:Lcom/twitter/android/widget/a;

.field private f:Landroid/text/StaticLayout;

.field private g:Landroid/text/StaticLayout;

.field private h:Landroid/text/StaticLayout;

.field private i:Landroid/text/StaticLayout;

.field private j:Landroid/text/StaticLayout;

.field private final k:Landroid/text/TextPaint;

.field private final l:Landroid/content/res/ColorStateList;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private final q:Landroid/content/res/ColorStateList;

.field private r:I

.field private s:Ljava/lang/String;

.field private final t:F

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010015

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/TweetView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/TweetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    sget-object v0, Lcom/twitter/android/ek;->TweetView:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->l:Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->m:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->t:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->u:I

    const/16 v1, 0xc

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->p:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/TweetView;->q:Landroid/content/res/ColorStateList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->v:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->K:I

    sget-object v1, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sput-object v1, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sput-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->w:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->x:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->y:I

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->z:I

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->A:I

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->B:I

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->C:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->D:I

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->E:I

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->c()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/text/StaticLayout;
    .locals 8

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->p:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-int v3, v1

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->n:I

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->q:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->r:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/provider/ah;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ah;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p1

    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/twitter/android/widget/TweetView;->m:I

    const/4 v1, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/twitter/android/widget/TweetView;->p:I

    return-void
.end method

.method public final a(Lcom/twitter/android/provider/ah;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call setProvider before calling setTweet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ah;

    invoke-virtual {p1, v1}, Lcom/twitter/android/provider/ah;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ah;

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-wide v2, p0, Lcom/twitter/android/widget/TweetView;->N:J

    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->q:Z

    if-eqz v0, :cond_7

    iget-wide v4, p1, Lcom/twitter/android/provider/ah;->p:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    move v0, v13

    :goto_0
    iget-wide v4, p1, Lcom/twitter/android/provider/ah;->f:J

    invoke-static {v1, v4, v5, v13}, Lci;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->s:Ljava/lang/String;

    iget-wide v4, p1, Lcom/twitter/android/provider/ah;->p:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_8

    iget-boolean v4, p1, Lcom/twitter/android/provider/ah;->q:Z

    if-nez v4, :cond_8

    iget v4, p1, Lcom/twitter/android/provider/ah;->z:I

    if-lez v4, :cond_8

    iget v4, p0, Lcom/twitter/android/widget/TweetView;->w:I

    invoke-static {v1, v4}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->G:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz v0, :cond_a

    iget-boolean v4, p1, Lcom/twitter/android/provider/ah;->k:Z

    if-eqz v4, :cond_a

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->x:I

    invoke-static {v1, v0}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->H:Landroid/graphics/drawable/Drawable;

    :goto_2
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/a;

    invoke-interface {v0, p1}, Lcom/twitter/android/widget/a;->b(Lcom/twitter/android/provider/ah;)Laz;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v0, v4, Laz;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    :cond_1
    iget-object v0, p1, Lcom/twitter/android/provider/ah;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    :goto_3
    iget-boolean v0, p0, Lcom/twitter/android/widget/TweetView;->L:Z

    if-eqz v0, :cond_2

    if-eqz v4, :cond_f

    invoke-virtual {v4, v2, v3}, Laz;->a(J)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v13

    :goto_4
    iput-boolean v0, p0, Lcom/twitter/android/widget/TweetView;->M:Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->refreshDrawableState()V

    :cond_2
    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->x:Z

    if-eqz v0, :cond_10

    const v0, 0x7f0900c1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->J:Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->A:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {p1}, Lcom/twitter/android/provider/ah;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->C:I

    invoke-static {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Laz;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->D:I

    invoke-static {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-wide v2, p1, Lcom/twitter/android/provider/ah;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->E:I

    invoke-static {v1, v2}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->requestLayout()V

    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->b()V

    return-void

    :cond_7
    move v0, v12

    goto/16 :goto_0

    :cond_8
    iget-wide v4, p1, Lcom/twitter/android/provider/ah;->p:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_9

    iget-boolean v4, p1, Lcom/twitter/android/provider/ah;->q:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/twitter/android/widget/TweetView;->w:I

    invoke-static {v1, v4}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/twitter/android/widget/TweetView;->G:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_9
    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->G:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_a
    if-eqz v0, :cond_b

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->y:I

    invoke-static {v1, v0}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->H:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_b
    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->k:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->z:I

    invoke-static {v1, v0}, Lcom/twitter/android/widget/TweetView;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->H:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_c
    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->H:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/twitter/android/provider/ah;->c:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v12

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcy;

    iget v8, v0, Lcy;->a:I

    sub-int/2addr v8, v7

    iget v9, v0, Lcy;->b:I

    sub-int/2addr v9, v7

    if-ltz v8, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-gt v9, v10, :cond_12

    iget-object v0, v0, Lcy;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {v5, v8, v9, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v8

    sub-int v0, v9, v0

    add-int/2addr v0, v7

    :goto_7
    move v7, v0

    goto :goto_6

    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    goto/16 :goto_3

    :cond_f
    move v0, v12

    goto/16 :goto_4

    :cond_10
    iget-boolean v0, p1, Lcom/twitter/android/provider/ah;->y:Z

    if-eqz v0, :cond_11

    const v0, 0x7f0900c2

    new-array v2, v13, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/twitter/android/provider/ah;->e:Ljava/lang/String;

    aput-object v3, v2, v12

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->J:Ljava/lang/String;

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->B:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_11
    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->J:Ljava/lang/String;

    iput-object v11, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_12
    move v0, v7

    goto :goto_7
.end method

.method public final a(Lcom/twitter/android/widget/a;)V
    .locals 2

    iput-object p1, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/a;

    invoke-interface {p1}, Lcom/twitter/android/widget/a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/widget/TweetView;->N:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/android/widget/TweetView;->L:Z

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ah;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/twitter/android/provider/ah;->j:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->e:Lcom/twitter/android/widget/a;

    invoke-interface {v2, v0}, Lcom/twitter/android/widget/a;->a(Lcom/twitter/android/provider/ah;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->invalidate()V

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_2

    :cond_3
    move-object v0, v4

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/twitter/android/widget/TweetView;->c()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/twitter/android/widget/TweetView;->M:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/android/widget/TweetView;->a:[I

    invoke-static {v0, v1}, Lcom/twitter/android/widget/TweetView;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ah;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iget-object v6, p0, Lcom/twitter/android/widget/TweetView;->F:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    sget-object v3, Lcom/twitter/android/widget/TweetView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-object v4, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->m:I

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v3

    int-to-float v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v6, p0, Lcom/twitter/android/widget/TweetView;->m:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v6, p0, Lcom/twitter/android/widget/TweetView;->n:I

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    move v6, v0

    :goto_2
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v7

    sub-int/2addr v2, v7

    iget v7, p0, Lcom/twitter/android/widget/TweetView;->p:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v8, v2

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    int-to-float v7, v7

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget v7, p0, Lcom/twitter/android/widget/TweetView;->p:I

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v7, p0, Lcom/twitter/android/widget/TweetView;->r:I

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/twitter/android/widget/TweetView;->v:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v2, v8

    int-to-float v8, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/twitter/android/widget/TweetView;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    :cond_4
    move v6, v5

    goto/16 :goto_2

    :cond_5
    add-int v0, v1, v6

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v3

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->m:I

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v1, p0, Lcom/twitter/android/widget/TweetView;->n:I

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v3

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, -0x1

    invoke-virtual {v4, v11, v10, v11, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->K:I

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v3, v3

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/twitter/android/widget/TweetView;->v:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->p:I

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->r:I

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_5

    move v10, v2

    :goto_0
    iget-object v11, p0, Lcom/twitter/android/widget/TweetView;->d:Lcom/twitter/android/provider/ah;

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->k:Landroid/text/TextPaint;

    sget-object v1, Lcom/twitter/android/widget/TweetView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingBottom()I

    move-result v4

    add-int v12, v1, v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v3

    sub-int v13, v0, v1

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->m:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v11, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->t:F

    iget v6, p0, Lcom/twitter/android/widget/TweetView;->u:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->h:Landroid/text/StaticLayout;

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->m:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->o:Ljava/lang/String;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->t:F

    iget v3, p0, Lcom/twitter/android/widget/TweetView;->u:I

    int-to-float v6, v3

    const/4 v7, 0x0

    move v3, v13

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/twitter/android/widget/TweetView;->K:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->J:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-int v3, v0

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    iget-object v0, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->v:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lcom/twitter/android/widget/TweetView;->v:I

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/twitter/android/widget/TweetView;->j:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v12

    :cond_3
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v8, v1, :cond_a

    move v0, v9

    :cond_4
    :goto_3
    invoke-virtual {p0, v10, v0}, Lcom/twitter/android/widget/TweetView;->setMeasuredDimension(II)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getSuggestedMinimumWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, v11, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-nez v1, :cond_9

    iget-wide v1, p0, Lcom/twitter/android/widget/TweetView;->N:J

    iget-wide v3, v11, Lcom/twitter/android/provider/ah;->p:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    iget v1, v11, Lcom/twitter/android/provider/ah;->z:I

    if-lez v1, :cond_8

    const v1, 0x7f0c0006

    iget v2, v11, Lcom/twitter/android/provider/ah;->z:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v11, Lcom/twitter/android/provider/ah;->z:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    move v0, v12

    goto :goto_2

    :cond_8
    const v1, 0x7f090034

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v11, Lcom/twitter/android/provider/ah;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/TweetView;->a(Ljava/lang/String;)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    :cond_9
    move v0, v12

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->f:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_b
    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->g:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_c
    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    :cond_d
    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/twitter/android/widget/TweetView;->i:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_e
    invoke-virtual {p0}, Lcom/twitter/android/widget/TweetView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v8, v1, :cond_4

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_3

    :cond_f
    move v10, v3

    goto/16 :goto_0
.end method
