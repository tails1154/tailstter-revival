.class public final Lcom/twitter/android/provider/aj;
.super Lcom/twitter/android/provider/ah;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "status_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "from_username"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "source"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "source_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_last"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "re_status_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "retweeter"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "retweeter_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "favorited"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "result_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "entities"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "retweet_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twitter/android/provider/aj;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/provider/ah;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/provider/ah;-><init>()V

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/aj;->a(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 7

    const/16 v6, 0xf

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->c:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->m:J

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/provider/aj;->k:Z

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->r:J

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->A:J

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/provider/aj;->q:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->p:J

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->d:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->n:J

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->o:Ljava/lang/String;

    :goto_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->e:Ljava/lang/String;

    :goto_3
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->f:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->h:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->j:Ljava/lang/String;

    iput v4, p0, Lcom/twitter/android/provider/aj;->s:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/twitter/android/provider/aj;->x:Z

    if-ne v0, v4, :cond_5

    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/twitter/android/provider/aj;->y:Z

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->w:[B

    return-void

    :cond_0
    move v0, v3

    goto/16 :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/twitter/android/provider/aj;->m:J

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->p:J

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->d:Ljava/lang/String;

    iget-wide v0, p0, Lcom/twitter/android/provider/aj;->r:J

    iput-wide v0, p0, Lcom/twitter/android/provider/aj;->n:J

    iget-object v0, p0, Lcom/twitter/android/provider/aj;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->o:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/provider/aj;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/provider/aj;->e:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_5
.end method
