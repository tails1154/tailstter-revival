.class public final Le;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C

.field private static final b:[B

.field private static c:[I

.field private static d:[I

.field private static e:[I

.field private static f:[I

.field private static g:[I

.field private static h:[I

.field private static i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xa

    const/4 v7, -0x1

    const/16 v6, 0x100

    const/16 v5, 0x80

    const/4 v4, 0x0

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Le;->a:[C

    array-length v0, v0

    new-array v1, v0, [B

    sput-object v1, Le;->b:[B

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Le;->b:[B

    sget-object v3, Le;->a:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v6, [I

    move v1, v4

    :goto_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    aput v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x22

    const/4 v2, 0x1

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Le;->c:[I

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Le;->c:[I

    sget-object v2, Le;->c:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v5

    :goto_2
    if-ge v1, v6, :cond_5

    and-int/lit16 v2, v1, 0xe0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    :goto_3
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    and-int/lit16 v2, v1, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x3

    goto :goto_3

    :cond_3
    and-int/lit16 v2, v1, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_4

    const/4 v2, 0x4

    goto :goto_3

    :cond_4
    move v2, v7

    goto :goto_3

    :cond_5
    sput-object v0, Le;->d:[I

    new-array v0, v6, [I

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    const/16 v1, 0x21

    :goto_4
    if-ge v1, v6, :cond_7

    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_6

    aput v4, v0, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const/16 v1, 0x40

    aput v4, v0, v1

    const/16 v1, 0x23

    aput v4, v0, v1

    const/16 v1, 0x2a

    aput v4, v0, v1

    const/16 v1, 0x2d

    aput v4, v0, v1

    const/16 v1, 0x2b

    aput v4, v0, v1

    sput-object v0, Le;->e:[I

    new-array v0, v6, [I

    sget-object v1, Le;->e:[I

    sget-object v2, Le;->e:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v5, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    sput-object v0, Le;->f:[I

    new-array v0, v6, [I

    sput-object v0, Le;->g:[I

    sget-object v0, Le;->d:[I

    sget-object v1, Le;->g:[I

    invoke-static {v0, v5, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Le;->g:[I

    const/16 v1, 0x20

    invoke-static {v0, v4, v1, v7}, Ljava/util/Arrays;->fill([IIII)V

    sget-object v0, Le;->g:[I

    const/16 v1, 0x9

    aput v4, v0, v1

    sget-object v0, Le;->g:[I

    aput v8, v0, v8

    sget-object v0, Le;->g:[I

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Le;->g:[I

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput v2, v0, v1

    new-array v0, v6, [I

    move v1, v4

    :goto_5
    const/16 v2, 0x20

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    const/16 v1, 0x22

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x5c

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x62

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput v2, v0, v1

    const/16 v1, 0x6e

    aput v1, v0, v8

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput v2, v0, v1

    sput-object v0, Le;->h:[I

    new-array v0, v5, [I

    sput-object v0, Le;->i:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    move v0, v4

    :goto_6
    if-ge v0, v8, :cond_9

    sget-object v1, Le;->i:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_9
    move v0, v4

    :goto_7
    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    sget-object v1, Le;->i:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    sget-object v1, Le;->i:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Le;->i:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x30

    sget-object v0, Le;->h:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v1, :cond_0

    aget v5, v0, v4

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v4, v0, v4

    if-gez v4, :cond_2

    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    sget-object v5, Le;->a:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Le;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    int-to-char v4, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static final a()[I
    .locals 1

    sget-object v0, Le;->c:[I

    return-object v0
.end method

.method public static final b()[I
    .locals 1

    sget-object v0, Le;->d:[I

    return-object v0
.end method

.method public static final c()[I
    .locals 1

    sget-object v0, Le;->e:[I

    return-object v0
.end method

.method public static final d()[I
    .locals 1

    sget-object v0, Le;->f:[I

    return-object v0
.end method

.method public static final e()[I
    .locals 1

    sget-object v0, Le;->g:[I

    return-object v0
.end method

.method public static final f()[I
    .locals 1

    sget-object v0, Le;->h:[I

    return-object v0
.end method

.method public static g()[C
    .locals 1

    sget-object v0, Le;->a:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
