.class public final enum Laq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Laq;

.field public static final enum b:Laq;

.field public static final enum c:Laq;

.field public static final enum d:Laq;

.field public static final enum e:Laq;

.field public static final enum f:Laq;

.field public static final enum g:Laq;

.field public static final enum h:Laq;

.field private static final synthetic j:[Laq;


# instance fields
.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Laq;

    const-string v1, "AUTO_CLOSE_SOURCE"

    invoke-direct {v0, v1, v3, v4}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->a:Laq;

    new-instance v0, Laq;

    const-string v1, "ALLOW_COMMENTS"

    invoke-direct {v0, v1, v4, v3}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->b:Laq;

    new-instance v0, Laq;

    const-string v1, "ALLOW_UNQUOTED_FIELD_NAMES"

    invoke-direct {v0, v1, v5, v3}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->c:Laq;

    new-instance v0, Laq;

    const-string v1, "ALLOW_SINGLE_QUOTES"

    invoke-direct {v0, v1, v6, v3}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->d:Laq;

    new-instance v0, Laq;

    const-string v1, "ALLOW_UNQUOTED_CONTROL_CHARS"

    invoke-direct {v0, v1, v7, v3}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->e:Laq;

    new-instance v0, Laq;

    const-string v1, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->f:Laq;

    new-instance v0, Laq;

    const-string v1, "INTERN_FIELD_NAMES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->g:Laq;

    new-instance v0, Laq;

    const-string v1, "CANONICALIZE_FIELD_NAMES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Laq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Laq;->h:Laq;

    const/16 v0, 0x8

    new-array v0, v0, [Laq;

    sget-object v1, Laq;->a:Laq;

    aput-object v1, v0, v3

    sget-object v1, Laq;->b:Laq;

    aput-object v1, v0, v4

    sget-object v1, Laq;->c:Laq;

    aput-object v1, v0, v5

    sget-object v1, Laq;->d:Laq;

    aput-object v1, v0, v6

    sget-object v1, Laq;->e:Laq;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Laq;->f:Laq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Laq;->g:Laq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Laq;->h:Laq;

    aput-object v2, v0, v1

    sput-object v0, Laq;->j:[Laq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Laq;->i:Z

    return-void
.end method

.method public static a()I
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Laq;->values()[Laq;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    iget-boolean v5, v4, Laq;->i:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v4}, Laq;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Laq;
    .locals 1

    const-class v0, Laq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laq;

    return-object p0
.end method

.method public static values()[Laq;
    .locals 1

    sget-object v0, Laq;->j:[Laq;

    invoke-virtual {v0}, [Laq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laq;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Laq;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Laq;->ordinal()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
