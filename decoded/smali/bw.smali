.class public final enum Lbw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbw;

.field public static final enum b:Lbw;

.field public static final enum c:Lbw;

.field public static final enum d:Lbw;

.field public static final enum e:Lbw;

.field private static enum f:Lbw;

.field private static final synthetic i:[Lbw;


# instance fields
.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lbw;

    const-string v1, "AUTO_CLOSE_TARGET"

    invoke-direct {v0, v1, v4, v3}, Lbw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbw;->a:Lbw;

    new-instance v0, Lbw;

    const-string v1, "AUTO_CLOSE_JSON_CONTENT"

    invoke-direct {v0, v1, v3, v3}, Lbw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbw;->b:Lbw;

    new-instance v0, Lbw;

    const-string v1, "QUOTE_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Lbw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbw;->c:Lbw;

    new-instance v0, Lbw;

    const-string v1, "QUOTE_NON_NUMERIC_NUMBERS"

    invoke-direct {v0, v1, v6, v3}, Lbw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbw;->f:Lbw;

    new-instance v0, Lbw;

    const-string v1, "WRITE_NUMBERS_AS_STRINGS"

    invoke-direct {v0, v1, v7, v4}, Lbw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbw;->d:Lbw;

    new-instance v0, Lbw;

    const-string v1, "FLUSH_PASSED_TO_STREAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lbw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbw;->e:Lbw;

    const/4 v0, 0x6

    new-array v0, v0, [Lbw;

    sget-object v1, Lbw;->a:Lbw;

    aput-object v1, v0, v4

    sget-object v1, Lbw;->b:Lbw;

    aput-object v1, v0, v3

    sget-object v1, Lbw;->c:Lbw;

    aput-object v1, v0, v5

    sget-object v1, Lbw;->f:Lbw;

    aput-object v1, v0, v6

    sget-object v1, Lbw;->d:Lbw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lbw;->e:Lbw;

    aput-object v2, v0, v1

    sput-object v0, Lbw;->i:[Lbw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lbw;->g:Z

    const/4 v0, 0x1

    invoke-virtual {p0}, Lbw;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    iput v0, p0, Lbw;->h:I

    return-void
.end method

.method public static a()I
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lbw;->values()[Lbw;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget-boolean v5, v4, Lbw;->g:Z

    if-eqz v5, :cond_0

    iget v4, v4, Lbw;->h:I

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lbw;
    .locals 1

    const-class v0, Lbw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbw;

    return-object p0
.end method

.method public static values()[Lbw;
    .locals 1

    sget-object v0, Lbw;->i:[Lbw;

    invoke-virtual {v0}, [Lbw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbw;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lbw;->h:I

    return v0
.end method
