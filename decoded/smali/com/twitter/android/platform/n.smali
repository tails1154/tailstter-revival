.class interface abstract Lcom/twitter/android/platform/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sync2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/platform/n;->a:[Ljava/lang/String;

    return-void
.end method
