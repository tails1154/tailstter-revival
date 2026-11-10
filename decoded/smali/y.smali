.class public final enum Ly;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ly;

.field public static final enum b:Ly;

.field public static final enum c:Ly;

.field public static final enum d:Ly;

.field public static final enum e:Ly;

.field private static final synthetic h:[Ly;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ly;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v3}, Ly;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Ly;->a:Ly;

    new-instance v0, Ly;

    const-string v1, "UTF16_BE"

    const-string v2, "UTF-16BE"

    invoke-direct {v0, v1, v4, v2, v4}, Ly;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Ly;->b:Ly;

    new-instance v0, Ly;

    const-string v1, "UTF16_LE"

    const-string v2, "UTF-16LE"

    invoke-direct {v0, v1, v5, v2, v3}, Ly;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Ly;->c:Ly;

    new-instance v0, Ly;

    const-string v1, "UTF32_BE"

    const-string v2, "UTF-32BE"

    invoke-direct {v0, v1, v6, v2, v4}, Ly;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Ly;->d:Ly;

    new-instance v0, Ly;

    const-string v1, "UTF32_LE"

    const-string v2, "UTF-32LE"

    invoke-direct {v0, v1, v7, v2, v3}, Ly;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Ly;->e:Ly;

    const/4 v0, 0x5

    new-array v0, v0, [Ly;

    sget-object v1, Ly;->a:Ly;

    aput-object v1, v0, v3

    sget-object v1, Ly;->b:Ly;

    aput-object v1, v0, v4

    sget-object v1, Ly;->c:Ly;

    aput-object v1, v0, v5

    sget-object v1, Ly;->d:Ly;

    aput-object v1, v0, v6

    sget-object v1, Ly;->e:Ly;

    aput-object v1, v0, v7

    sput-object v0, Ly;->h:[Ly;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ly;->f:Ljava/lang/String;

    iput-boolean p4, p0, Ly;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly;
    .locals 1

    const-class v0, Ly;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly;

    return-object p0
.end method

.method public static values()[Ly;
    .locals 1

    sget-object v0, Ly;->h:[Ly;

    invoke-virtual {v0}, [Ly;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ly;->g:Z

    return v0
.end method
