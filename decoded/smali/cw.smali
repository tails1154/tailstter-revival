.class public final Lcw;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcw;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcw;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a([CII)I
    .locals 5

    const/16 v4, 0x30

    aget-char v0, p0, p1

    sub-int/2addr v0, v4

    add-int v1, p2, p1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static final a([CIIZ)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    sget-object v0, Lcw;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    sget-object v0, Lcw;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-le p2, v1, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_4

    add-int v3, p1, v2

    aget-char v3, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public static final b([CII)J
    .locals 6

    const/16 v5, 0x9

    sub-int v0, p2, v5

    invoke-static {p0, p1, v0}, Lcw;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    add-int/2addr v0, p1

    invoke-static {p0, v0, v5}, Lcw;->a([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method
