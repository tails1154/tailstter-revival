.class public final enum Lcom/twitter/android/client/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/twitter/android/client/d;

.field public static final enum b:Lcom/twitter/android/client/d;

.field public static final enum c:Lcom/twitter/android/client/d;

.field public static final enum d:Lcom/twitter/android/client/d;

.field private static final synthetic e:[Lcom/twitter/android/client/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twitter/android/client/d;

    const-string v1, "LOGGED_OUT"

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/client/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/d;

    new-instance v0, Lcom/twitter/android/client/d;

    const-string v1, "LOGGING_IN"

    invoke-direct {v0, v1, v3}, Lcom/twitter/android/client/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/d;->b:Lcom/twitter/android/client/d;

    new-instance v0, Lcom/twitter/android/client/d;

    const-string v1, "LOGGED_IN"

    invoke-direct {v0, v1, v4}, Lcom/twitter/android/client/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/d;->c:Lcom/twitter/android/client/d;

    new-instance v0, Lcom/twitter/android/client/d;

    const-string v1, "LOGGING_OUT"

    invoke-direct {v0, v1, v5}, Lcom/twitter/android/client/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twitter/android/client/d;->d:Lcom/twitter/android/client/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twitter/android/client/d;

    sget-object v1, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/client/d;->b:Lcom/twitter/android/client/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/client/d;->c:Lcom/twitter/android/client/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/client/d;->d:Lcom/twitter/android/client/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twitter/android/client/d;->e:[Lcom/twitter/android/client/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/client/d;
    .locals 1

    const-class v0, Lcom/twitter/android/client/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/client/d;

    return-object p0
.end method

.method public static values()[Lcom/twitter/android/client/d;
    .locals 1

    sget-object v0, Lcom/twitter/android/client/d;->e:[Lcom/twitter/android/client/d;

    invoke-virtual {v0}, [Lcom/twitter/android/client/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/client/d;

    return-object v0
.end method
