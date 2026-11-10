.class final Lcom/twitter/android/eo;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "web_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "followers"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "friends"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "profile_created"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "friendship"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "verified"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "statuses"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "protected"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/eo;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
