.class final Lcom/twitter/android/client/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "g_status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "updated_at"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favorited"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "place_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/client/a;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
