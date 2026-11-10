.class public final enum Lap;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lap;

.field private static enum b:Lap;

.field private static enum c:Lap;

.field private static final synthetic e:[Lap;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v2, 0xfa0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lap;

    const-string v1, "READ_IO_BUFFER"

    invoke-direct {v0, v1, v3, v2}, Lap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lap;->a:Lap;

    new-instance v0, Lap;

    const-string v1, "WRITE_ENCODING_BUFFER"

    invoke-direct {v0, v1, v4, v2}, Lap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lap;->b:Lap;

    new-instance v0, Lap;

    const-string v1, "WRITE_CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v5, v2}, Lap;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lap;->c:Lap;

    const/4 v0, 0x3

    new-array v0, v0, [Lap;

    sget-object v1, Lap;->a:Lap;

    aput-object v1, v0, v3

    sget-object v1, Lap;->b:Lap;

    aput-object v1, v0, v4

    sget-object v1, Lap;->c:Lap;

    aput-object v1, v0, v5

    sput-object v0, Lap;->e:[Lap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lap;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lap;
    .locals 1

    const-class v0, Lap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lap;

    return-object p0
.end method

.method public static values()[Lap;
    .locals 1

    sget-object v0, Lap;->e:[Lap;

    invoke-virtual {v0}, [Lap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lap;

    return-object v0
.end method
