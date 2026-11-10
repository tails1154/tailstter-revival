.class public final La;
.super Ljava/io/OutputStream;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lbx;

.field private final c:Ljava/util/LinkedList;

.field private d:I

.field private e:[B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, La;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La;-><init>(Lbx;)V

    return-void
.end method

.method private constructor <init>(Lbx;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, La;-><init>(Lbx;I)V

    return-void
.end method

.method private constructor <init>(Lbx;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, La;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, La;->b:Lbx;

    const/16 v0, 0x1f4

    new-array v0, v0, [B

    iput-object v0, p0, La;->e:[B

    return-void
.end method

.method private a()V
    .locals 3

    const/high16 v2, 0x40000

    iget v0, p0, La;->d:I

    iget-object v1, p0, La;->e:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, La;->d:I

    iget v0, p0, La;->d:I

    shr-int/lit8 v0, v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    iget-object v1, p0, La;->c:Ljava/util/LinkedList;

    iget-object v2, p0, La;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [B

    iput-object v0, p0, La;->e:[B

    const/4 v0, 0x0

    iput v0, p0, La;->f:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 3

    iget v0, p0, La;->f:I

    iget-object v1, p0, La;->e:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, La;->a()V

    :cond_0
    iget-object v0, p0, La;->e:[B

    iget v1, p0, La;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La;->f:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 5

    move v0, p3

    move v1, p2

    :goto_0
    iget-object v2, p0, La;->e:[B

    array-length v2, v2

    iget v3, p0, La;->f:I

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, La;->e:[B

    iget v4, p0, La;->f:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    iget v3, p0, La;->f:I

    add-int/2addr v3, v2

    iput v3, p0, La;->f:I

    sub-int/2addr v0, v2

    :cond_0
    if-lez v0, :cond_1

    invoke-direct {p0}, La;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
