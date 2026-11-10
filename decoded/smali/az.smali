.class public final Laz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final e:Z

.field private static f:Laz;

.field private static final g:[Ljava/lang/String;

.field private static final h:Ljava/util/Comparator;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public c:Lcc;

.field public d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "TweetEntities"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Laz;->e:Z

    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    sput-object v0, Laz;->f:Laz;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "entities"

    aput-object v2, v0, v1

    sput-object v0, Laz;->g:[Ljava/lang/String;

    new-instance v0, Ldq;

    invoke-direct {v0}, Ldq;-><init>()V

    sput-object v0, Laz;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbl;)Laz;
    .locals 9

    const/4 v3, 0x3

    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/4 v4, 0x0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_0
    sget-object v5, Lcg;->b:Lcg;

    if-eq v4, v5, :cond_1a

    sget-object v5, Ldr;->a:[I

    invoke-virtual {v4}, Lcg;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    const-string v4, "promoted_content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    new-instance v5, Lcc;

    invoke-direct {v5}, Lcc;-><init>()V

    :goto_2
    sget-object v6, Lcg;->b:Lcg;

    if-eq v4, v6, :cond_2

    sget-object v6, Ldr;->a:[I

    invoke-virtual {v4}, Lcg;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_1

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_3

    :pswitch_3
    const-string v4, "impression_id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcc;->a:Ljava/lang/String;

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_2
    iput-object v5, v0, Laz;->c:Lcc;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_6
    const-string v5, "urls"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_4
    :goto_4
    sget-object v5, Lcg;->d:Lcg;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    sget-object v5, Lcg;->a:Lcg;

    if-ne v4, v5, :cond_4

    new-instance v5, Lcy;

    invoke-direct {v5}, Lcy;-><init>()V

    :goto_5
    sget-object v6, Lcg;->b:Lcg;

    if-eq v4, v6, :cond_9

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ldr;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    :cond_5
    :goto_6
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5

    :pswitch_7
    const-string v6, "indices"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0, v5}, Laz;->a(Lbl;Lah;)V

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5

    :pswitch_8
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5

    :pswitch_9
    const-string v6, "url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcy;->c:Ljava/lang/String;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5

    :cond_7
    const-string v6, "expanded_url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcy;->d:Ljava/lang/String;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_5

    :cond_8
    const-string v6, "display_url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcy;->e:Ljava/lang/String;

    goto :goto_6

    :cond_9
    invoke-static {v5}, Ldi;->a(Lcy;)Ldi;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    const-string v5, "user_mentions"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ldl;

    invoke-direct {v5}, Ldl;-><init>()V

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v6

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    :goto_7
    sget-object v7, Lcg;->d:Lcg;

    if-eq v6, v7, :cond_e

    sget-object v7, Ldr;->a:[I

    invoke-virtual {v6}, Lcg;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_3

    :cond_c
    :goto_8
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v6

    goto :goto_7

    :pswitch_a
    new-instance v3, Ldl;

    invoke-direct {v3}, Ldl;-><init>()V

    goto :goto_8

    :pswitch_b
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_c
    const-string v6, "indices"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {p0, v3}, Laz;->a(Lbl;Lah;)V

    :goto_9
    :pswitch_d
    const-string v6, "screen_name"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Ldl;->c:Ljava/lang/String;

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_9

    :pswitch_e
    const-string v6, "id"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v6

    iput-wide v6, v3, Ldl;->d:J

    goto :goto_8

    :pswitch_f
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_e
    iput-object v4, v0, Laz;->b:Ljava/util/ArrayList;

    move-object v3, v5

    goto/16 :goto_1

    :cond_f
    const-string v5, "media"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_10
    :goto_a
    sget-object v5, Lcg;->d:Lcg;

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    sget-object v5, Lcg;->a:Lcg;

    if-ne v4, v5, :cond_10

    new-instance v5, Ldi;

    invoke-direct {v5}, Ldi;-><init>()V

    :goto_b
    sget-object v6, Lcg;->b:Lcg;

    if-eq v4, v6, :cond_18

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ldr;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_4

    :cond_11
    :goto_c
    :pswitch_10
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :pswitch_11
    const-string v6, "indices"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {p0, v5}, Laz;->a(Lbl;Lah;)V

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :pswitch_12
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :pswitch_13
    const-string v6, "id"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v6

    iput-wide v6, v5, Ldi;->f:J

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :pswitch_14
    const-string v6, "url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ldi;->c:Ljava/lang/String;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :cond_13
    const-string v6, "expanded_url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ldi;->d:Ljava/lang/String;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :cond_14
    const-string v6, "display_url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ldi;->e:Ljava/lang/String;

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_b

    :cond_15
    const-string v6, "type"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    iput v6, v5, Ldi;->h:I

    :cond_16
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_b

    :cond_17
    const-string v6, "media_url"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Ldi;->g:Ljava/lang/String;

    goto/16 :goto_c

    :cond_18
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_19
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Laz;->a:Ljava/util/ArrayList;

    iget-object v1, v0, Laz;->a:Ljava/util/ArrayList;

    sget-object v3, Laz;->h:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1b
    iget-object v1, v0, Laz;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    iget-object v1, v0, Laz;->b:Ljava/util/ArrayList;

    sget-object v3, Laz;->h:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Laz;->d:Ljava/util/ArrayList;

    iget-object v1, v0, Laz;->d:Ljava/util/ArrayList;

    sget-object v2, Laz;->h:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1d
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_b
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Laz;
    .locals 5

    const/4 v2, 0x3

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sget-object v2, Lae;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcy;

    invoke-direct {v3}, Lcy;-><init>()V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcy;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iput v4, v3, Lcy;->a:I

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    iput v4, v3, Lcy;->b:I

    invoke-static {v3}, Ldi;->a(Lcy;)Ldi;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Laz;

    invoke-direct {v2}, Laz;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Laz;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v2, Laz;->a:Ljava/util/ArrayList;

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a([B)Laz;
    .locals 6

    if-eqz p0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laz;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    :try_start_2
    sget-boolean v3, Laz;->e:Z

    if-eqz v3, :cond_0

    const-string v3, "TweetEntities"

    const-string v4, "from"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    :cond_1
    :goto_2
    sget-object v0, Laz;->f:Laz;

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_3
    :try_start_3
    sget-boolean v3, Laz;->e:Z

    if-eqz v3, :cond_2

    const-string v3, "TweetEntities"

    const-string v4, "from"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_4
    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private static a(Lbl;Lah;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    :goto_0
    sget-object v1, Lcg;->d:Lcg;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcg;->h:Lcg;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lbl;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lah;->a:I

    if-ne v1, v2, :cond_1

    iput v0, p1, Lah;->a:I

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lah;->b:I

    if-ne v1, v2, :cond_0

    iput v0, p1, Lah;->b:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    const/4 v10, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v10

    move v5, v10

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lah;

    move-object v1, v0

    move v6, v5

    move v11, v4

    move v4, v5

    move v5, v11

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    aget v7, p0, v10

    const/4 v8, 0x1

    aget v8, p0, v8

    sub-int v7, v8, v7

    iget v9, v1, Lah;->a:I

    if-ge v8, v9, :cond_2

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget v4, v1, Lah;->a:I

    sub-int/2addr v4, v5

    iput v4, v1, Lah;->a:I

    iget v4, v1, Lah;->b:I

    sub-int/2addr v4, v5

    iput v4, v1, Lah;->b:I

    move v4, v5

    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Laz;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Laz;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Laz;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(J)Z
    .locals 3

    iget-object v0, p0, Laz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldl;

    iget-wide v1, p0, Ldl;->d:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[B
    .locals 7

    const/4 v5, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v5

    :goto_1
    :try_start_2
    sget-boolean v3, Laz;->e:Z

    if-eqz v3, :cond_0

    const-string v3, "TweetEntities"

    const-string v4, "toByteArray"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v5

    :goto_2
    invoke-static {v2}, Lci;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    throw v1

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public final b()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Laz;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldi;

    iget v1, p0, Ldi;->h:I

    if-ne v1, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Laz;

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, Laz;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "urls: []"

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "urls:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laz;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcy;

    invoke-virtual {p0}, Lcy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
