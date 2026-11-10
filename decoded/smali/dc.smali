.class public final enum Ldc;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldc;

.field public static final enum b:Ldc;

.field public static final enum c:Ldc;

.field public static final enum d:Ldc;

.field private static final synthetic f:[Ldc;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0xc8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ldc;

    const-string v1, "TOKEN_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v3, v2}, Ldc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldc;->a:Ldc;

    new-instance v0, Ldc;

    const-string v1, "CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Ldc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldc;->b:Ldc;

    new-instance v0, Ldc;

    const-string v1, "TEXT_BUFFER"

    invoke-direct {v0, v1, v5, v7}, Ldc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldc;->c:Ldc;

    new-instance v0, Ldc;

    const-string v1, "NAME_COPY_BUFFER"

    invoke-direct {v0, v1, v6, v7}, Ldc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldc;->d:Ldc;

    const/4 v0, 0x4

    new-array v0, v0, [Ldc;

    sget-object v1, Ldc;->a:Ldc;

    aput-object v1, v0, v3

    sget-object v1, Ldc;->b:Ldc;

    aput-object v1, v0, v4

    sget-object v1, Ldc;->c:Ldc;

    aput-object v1, v0, v5

    sget-object v1, Ldc;->d:Ldc;

    aput-object v1, v0, v6

    sput-object v0, Ldc;->f:[Ldc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldc;->e:I

    return-void
.end method

.method static synthetic a(Ldc;)I
    .locals 1

    iget v0, p0, Ldc;->e:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldc;
    .locals 1

    const-class v0, Ldc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldc;

    return-object p0
.end method

.method public static values()[Ldc;
    .locals 1

    sget-object v0, Ldc;->f:[Ldc;

    invoke-virtual {v0}, [Ldc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc;

    return-object v0
.end method
