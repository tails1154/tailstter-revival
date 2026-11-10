.class public final enum Lcom/twitter/android/service/l;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic B:[Lcom/twitter/android/service/l;

.field public static final enum a:Lcom/twitter/android/service/l;

.field public static final enum b:Lcom/twitter/android/service/l;

.field public static final enum c:Lcom/twitter/android/service/l;

.field public static final enum d:Lcom/twitter/android/service/l;

.field public static final enum e:Lcom/twitter/android/service/l;

.field public static final enum f:Lcom/twitter/android/service/l;

.field public static final enum g:Lcom/twitter/android/service/l;

.field public static final enum h:Lcom/twitter/android/service/l;

.field public static final enum i:Lcom/twitter/android/service/l;

.field public static final enum j:Lcom/twitter/android/service/l;

.field public static final enum k:Lcom/twitter/android/service/l;

.field public static final enum l:Lcom/twitter/android/service/l;

.field public static final enum m:Lcom/twitter/android/service/l;

.field public static final enum n:Lcom/twitter/android/service/l;

.field public static final enum o:Lcom/twitter/android/service/l;

.field public static final enum p:Lcom/twitter/android/service/l;

.field public static final enum q:Lcom/twitter/android/service/l;

.field public static final enum r:Lcom/twitter/android/service/l;

.field public static final enum s:Lcom/twitter/android/service/l;

.field public static final enum t:Lcom/twitter/android/service/l;

.field public static final enum u:Lcom/twitter/android/service/l;

.field public static final enum v:Lcom/twitter/android/service/l;

.field public static final enum w:Lcom/twitter/android/service/l;

.field public static final enum x:Lcom/twitter/android/service/l;

.field public static final enum y:Lcom/twitter/android/service/l;

.field public static final enum z:Lcom/twitter/android/service/l;


# instance fields
.field private final A:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "HOME"

    const-string v2, "home:::impression"

    invoke-direct {v0, v1, v4, v2}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->a:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "USER_TIMELINE"

    const-string v2, "profile:timeline::impression"

    invoke-direct {v0, v1, v5, v2}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->b:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "SEARCH_RESULTS"

    const-string v2, "search:::impression"

    invoke-direct {v0, v1, v6, v2}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->c:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "MENTIONS"

    const-string v2, "mentions:::impression"

    invoke-direct {v0, v1, v7, v2}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->d:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "FAVORITES"

    const-string v2, "favorites:::impression"

    invoke-direct {v0, v1, v8, v2}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->e:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "MESSAGES"

    const/4 v2, 0x5

    const-string v3, "messages:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->f:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "OWN_LISTS"

    const/4 v2, 0x6

    const-string v3, "own_lists:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->g:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "LIST"

    const/4 v2, 0x7

    const-string v3, "list:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->h:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "USERS_FOLLOWING"

    const/16 v2, 0x8

    const-string v3, "following:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->i:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "USERS_FOLLOWERS"

    const/16 v2, 0x9

    const-string v3, "followers:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->j:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "SLUG"

    const/16 v2, 0xa

    const-string v3, "user_recommendations:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->k:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "SEARCH"

    const/16 v2, 0xb

    const-string v3, "searches:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->l:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "COMPOSE_TWEET"

    const/16 v2, 0xc

    const-string v3, ":composition::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->m:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "HOME_GET_NEW"

    const/16 v2, 0xd

    const-string v3, "home:::get_newer"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->n:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "HOME_GET_MIDDLE"

    const/16 v2, 0xe

    const-string v3, "home:::get_middle"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->o:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "HOME_GET_OLDER"

    const/16 v2, 0xf

    const-string v3, "home:::get_older"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->p:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "API_REQUEST"

    const/16 v2, 0x10

    const-string v3, "api:::request"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->q:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_VIEW"

    const/16 v2, 0x11

    const-string v3, "tweet::tweet:impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_RT"

    const/16 v2, 0x12

    const-string v3, "::tweet:retweet"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->s:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_REPLY"

    const/16 v2, 0x13

    const-string v3, "::tweet:reply"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->t:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_QUOTE"

    const/16 v2, 0x14

    const-string v3, "::tweet:quote"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->u:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_OPEN_URL"

    const/16 v2, 0x15

    const-string v3, "::tweet:open_link"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->v:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_FAVORITE"

    const/16 v2, 0x16

    const-string v3, "::tweet:favorite"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->w:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "TWEET_SHARE"

    const/16 v2, 0x17

    const-string v3, "::tweet:share"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->x:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "USER_PROFILE"

    const/16 v2, 0x18

    const-string v3, "profile:profile::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->y:Lcom/twitter/android/service/l;

    new-instance v0, Lcom/twitter/android/service/l;

    const-string v1, "SIGNED_OUT_FRONT"

    const/16 v2, 0x19

    const-string v3, "front:::impression"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/service/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/android/service/l;->z:Lcom/twitter/android/service/l;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/twitter/android/service/l;

    sget-object v1, Lcom/twitter/android/service/l;->a:Lcom/twitter/android/service/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/service/l;->b:Lcom/twitter/android/service/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/android/service/l;->c:Lcom/twitter/android/service/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twitter/android/service/l;->d:Lcom/twitter/android/service/l;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twitter/android/service/l;->e:Lcom/twitter/android/service/l;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/twitter/android/service/l;->f:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twitter/android/service/l;->g:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/twitter/android/service/l;->h:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/twitter/android/service/l;->i:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/twitter/android/service/l;->j:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/twitter/android/service/l;->k:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/twitter/android/service/l;->l:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/twitter/android/service/l;->m:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/twitter/android/service/l;->n:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/twitter/android/service/l;->o:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/twitter/android/service/l;->p:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/twitter/android/service/l;->q:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/twitter/android/service/l;->s:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/twitter/android/service/l;->t:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/twitter/android/service/l;->u:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/twitter/android/service/l;->v:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/twitter/android/service/l;->w:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/twitter/android/service/l;->x:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/twitter/android/service/l;->y:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/twitter/android/service/l;->z:Lcom/twitter/android/service/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/service/l;->B:[Lcom/twitter/android/service/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/twitter/android/service/l;->A:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/service/l;
    .locals 1

    const-class v0, Lcom/twitter/android/service/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/service/l;

    return-object p0
.end method

.method public static values()[Lcom/twitter/android/service/l;
    .locals 1

    sget-object v0, Lcom/twitter/android/service/l;->B:[Lcom/twitter/android/service/l;

    invoke-virtual {v0}, [Lcom/twitter/android/service/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/service/l;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/service/l;->A:Ljava/lang/String;

    return-object v0
.end method
