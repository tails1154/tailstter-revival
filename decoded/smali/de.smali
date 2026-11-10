.class public final Lde;
.super Ljava/lang/Object;


# instance fields
.field private transient a:[Lcp;

.field private transient b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lde;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lde;->d:F

    const/16 v0, 0x14

    new-array v0, v0, [Lcp;

    iput-object v0, p0, Lde;->a:[Lcp;

    const/16 v0, 0xf

    iput v0, p0, Lde;->c:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const v8, 0x7fffffff

    iget-object v0, p0, Lde;->a:[Lcp;

    and-int v1, p1, v8

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v2, v0, v1

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcp;->a:I

    if-ne v3, p1, :cond_0

    iget-object v0, v2, Lcp;->b:Ljava/lang/Object;

    iput-object p2, v2, Lcp;->b:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, v2, Lcp;->c:Lcp;

    goto :goto_0

    :cond_1
    iget v2, p0, Lde;->b:I

    iget v3, p0, Lde;->c:I

    if-lt v2, v3, :cond_4

    iget-object v0, p0, Lde;->a:[Lcp;

    array-length v0, v0

    iget-object v1, p0, Lde;->a:[Lcp;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lcp;

    int-to-float v4, v2

    iget v5, p0, Lde;->d:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lde;->c:I

    iput-object v3, p0, Lde;->a:[Lcp;

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_3

    aget-object v0, v1, v4

    :goto_3
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcp;->c:Lcp;

    iget v6, v0, Lcp;->a:I

    and-int/2addr v6, v8

    rem-int/2addr v6, v2

    aget-object v7, v3, v6

    iput-object v7, v0, Lcp;->c:Lcp;

    aput-object v0, v3, v6

    move-object v0, v5

    goto :goto_3

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lde;->a:[Lcp;

    and-int v1, p1, v8

    array-length v2, v0

    rem-int/2addr v1, v2

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_4
    new-instance v2, Lcp;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lcp;-><init>(IILjava/lang/Object;Lcp;)V

    aput-object v2, v1, v0

    iget v0, p0, Lde;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde;->b:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_4
.end method
