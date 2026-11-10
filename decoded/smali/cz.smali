.class public final Lcz;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:Ljava/lang/String;

.field private static h:[C

.field private static i:[C

.field private static j:[B

.field private static k:[Ljava/lang/String;

.field private static l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x2

    const/4 v14, 0x1

    const/16 v13, 0xfa0

    const/16 v12, 0xa

    const/4 v11, 0x0

    const v0, 0xf4240

    sput v0, Lcz;->a:I

    const v0, 0x3b9aca00

    sput v0, Lcz;->b:I

    const-wide v0, 0x2540be400L

    sput-wide v0, Lcz;->c:J

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcz;->d:J

    const-wide/32 v0, -0x80000000

    sput-wide v0, Lcz;->e:J

    const-wide/32 v0, 0x7fffffff

    sput-wide v0, Lcz;->f:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcz;->g:Ljava/lang/String;

    new-array v0, v13, [C

    sput-object v0, Lcz;->h:[C

    new-array v0, v13, [C

    sput-object v0, Lcz;->i:[C

    move v0, v11

    move v1, v11

    :goto_0
    if-ge v0, v12, :cond_4

    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    if-nez v0, :cond_0

    move v3, v11

    :goto_1
    move v4, v1

    move v1, v11

    :goto_2
    if-ge v1, v12, :cond_3

    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v6, v11

    :goto_3
    move v7, v4

    move v4, v11

    :goto_4
    if-ge v4, v12, :cond_2

    add-int/lit8 v8, v4, 0x30

    int-to-char v8, v8

    sget-object v9, Lcz;->h:[C

    aput-char v3, v9, v7

    sget-object v9, Lcz;->h:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v6, v9, v10

    sget-object v9, Lcz;->h:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    sget-object v9, Lcz;->i:[C

    aput-char v2, v9, v7

    sget-object v9, Lcz;->i:[C

    add-int/lit8 v10, v7, 0x1

    aput-char v5, v9, v10

    sget-object v9, Lcz;->i:[C

    add-int/lit8 v10, v7, 0x2

    aput-char v8, v9, v10

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    :cond_4
    new-array v0, v13, [B

    sput-object v0, Lcz;->j:[B

    move v0, v11

    :goto_5
    if-ge v0, v13, :cond_5

    sget-object v1, Lcz;->j:[B

    sget-object v2, Lcz;->i:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v11

    const-string v1, "1"

    aput-object v1, v0, v14

    const-string v1, "2"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const-string v1, "10"

    aput-object v1, v0, v12

    sput-object v0, Lcz;->k:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v0, v11

    const-string v1, "-2"

    aput-object v1, v0, v14

    const-string v1, "-3"

    aput-object v1, v0, v15

    const/4 v1, 0x3

    const-string v2, "-4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-10"

    aput-object v2, v0, v1

    sput-object v0, Lcz;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[CI)I
    .locals 6

    if-gez p0, :cond_8

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    int-to-long v0, p0

    invoke-static {v0, v1, p1, p2}, Lcz;->a(J[CI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2d

    aput-char v1, p1, p2

    neg-int v1, p0

    :goto_1
    sget v2, Lcz;->a:I

    if-ge v1, v2, :cond_3

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    aput-char v1, p1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v1, p1, v0}, Lcz;->b(I[CI)I

    move-result v0

    goto :goto_0

    :cond_2
    div-int/lit16 v2, v1, 0x3e8

    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr v1, v3

    invoke-static {v2, p1, v0}, Lcz;->b(I[CI)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcz;->c(I[CI)I

    move-result v0

    goto :goto_0

    :cond_3
    sget v2, Lcz;->b:I

    if-lt v1, v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    sget v3, Lcz;->b:I

    sub-int/2addr v1, v3

    sget v3, Lcz;->b:I

    if-lt v1, v3, :cond_6

    sget v3, Lcz;->b:I

    sub-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x32

    aput-char v4, p1, v0

    move v0, v3

    :cond_4
    :goto_3
    div-int/lit16 v3, v1, 0x3e8

    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr v1, v4

    div-int/lit16 v4, v3, 0x3e8

    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v3, v5

    if-eqz v2, :cond_7

    invoke-static {v4, p1, v0}, Lcz;->c(I[CI)I

    move-result v0

    :goto_4
    invoke-static {v3, p1, v0}, Lcz;->c(I[CI)I

    move-result v0

    invoke-static {v1, p1, v0}, Lcz;->c(I[CI)I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v0, 0x1

    const/16 v4, 0x31

    aput-char v4, p1, v0

    move v0, v3

    goto :goto_3

    :cond_7
    invoke-static {v4, p1, v0}, Lcz;->b(I[CI)I

    move-result v0

    goto :goto_4

    :cond_8
    move v0, p2

    move v1, p0

    goto :goto_1
.end method

.method public static a(J[CI)I
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    sget-wide v0, Lcz;->e:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcz;->a(I[CI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    sget-object v0, Lcz;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcz;->g:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v0, p3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2d

    aput-char v1, p2, p3

    neg-long v1, p0

    :goto_1
    const/16 v3, 0xa

    sget-wide v4, Lcz;->c:J

    move-wide v10, v4

    move v5, v3

    move-wide v3, v10

    :goto_2
    cmp-long v6, v1, v3

    if-ltz v6, :cond_3

    const/16 v6, 0x13

    if-eq v5, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    shl-long v6, v3, v6

    const/4 v8, 0x1

    shl-long/2addr v3, v8

    add-long/2addr v3, v6

    goto :goto_2

    :cond_2
    sget-wide v0, Lcz;->f:J

    cmp-long v0, p0, v0

    if-gtz v0, :cond_6

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lcz;->a(I[CI)I

    move-result v0

    goto :goto_0

    :cond_3
    add-int v3, v0, v5

    move-wide v4, v1

    move v1, v3

    :goto_3
    sget-wide v6, Lcz;->f:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    add-int/lit8 v1, v1, -0x3

    sget-wide v6, Lcz;->d:J

    div-long v6, v4, v6

    sget-wide v8, Lcz;->d:J

    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    long-to-int v2, v4

    invoke-static {v2, p2, v1}, Lcz;->c(I[CI)I

    move-wide v4, v6

    goto :goto_3

    :cond_4
    long-to-int v2, v4

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_4
    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_5

    add-int/lit8 v2, v2, -0x3

    div-int/lit16 v4, v1, 0x3e8

    mul-int/lit16 v5, v4, 0x3e8

    sub-int/2addr v1, v5

    invoke-static {v1, p2, v2}, Lcz;->c(I[CI)I

    move v1, v4

    goto :goto_4

    :cond_5
    invoke-static {v1, p2, v0}, Lcz;->b(I[CI)I

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, p3

    move-wide v1, p0

    goto :goto_1
.end method

.method private static b(I[CI)I
    .locals 4

    shl-int/lit8 v0, p0, 0x2

    sget-object v1, Lcz;->h:[C

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v1, v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    aput-char v0, p1, p2

    move v0, v1

    :goto_0
    sget-object v1, Lcz;->h:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    if-eqz v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    aput-char v1, p1, v0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcz;->h:[C

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    return v1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private static c(I[CI)I
    .locals 5

    shl-int/lit8 v0, p0, 0x2

    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lcz;->i:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v2, v0

    aput-char v0, p1, p2

    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcz;->i:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcz;->i:[C

    aget-char v2, v2, v4

    aput-char v2, p1, v0

    return v1
.end method
