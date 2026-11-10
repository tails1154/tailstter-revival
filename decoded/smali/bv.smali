.class public final Lbv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Z

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbr;

    invoke-direct {v0}, Lbr;-><init>()V

    sput-object v0, Lbv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lbv;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lbv;->b:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lbv;->a:Z

    iput-wide p2, p0, Lbv;->b:J

    return-void
.end method

.method public static a(Lbl;)Lbv;
    .locals 14

    const-wide/16 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    move-wide v1, v9

    move v3, v7

    :goto_1
    sget-object v4, Lcg;->b:Lcg;

    if-eq v0, v4, :cond_7

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbq;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_1
    move-wide v11, v1

    move-wide v0, v11

    move v2, v3

    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    move-object v11, v3

    move v3, v2

    move-wide v12, v0

    move-wide v1, v12

    move-object v0, v11

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-wide v11, v1

    move-wide v0, v11

    move v2, v3

    goto :goto_2

    :pswitch_1
    const-string v0, "trend_location"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v0

    :goto_3
    sget-object v1, Lcg;->d:Lcg;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcg;->a:Lcg;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    :goto_4
    sget-object v1, Lcg;->b:Lcg;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbq;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_5
    :pswitch_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    goto :goto_4

    :pswitch_3
    const-string v0, "woeid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v0

    :goto_6
    move v2, v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-wide v0, v9

    goto :goto_6

    :cond_5
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-wide v11, v1

    move-wide v0, v11

    move v2, v3

    goto :goto_2

    :pswitch_5
    const-string v5, "geo_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v3, Lcg;->j:Lcg;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_7
    move-wide v11, v1

    move v2, v0

    move-wide v0, v11

    goto :goto_2

    :cond_6
    move v0, v7

    goto :goto_7

    :cond_7
    new-instance v0, Lbv;

    invoke-direct {v0, v3, v1, v2}, Lbv;-><init>(ZJ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lbv;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Ldb;->a:Ldp;

    invoke-virtual {v0, p0}, Ldp;->a(Ljava/lang/String;)Lbl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Lbl;->g()Lcg;

    invoke-static {v0}, Lbv;->a(Lbl;)Lbv;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    sget-object v2, Ldb;->a:Ldp;

    invoke-virtual {v2, v1}, Ldp;->a(Ljava/io/Writer;)Las;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Las;->c()V

    const-string v2, "geo_enabled"

    iget-boolean v3, p0, Lbv;->a:Z

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Z)V

    const-string v2, "trend_location"

    invoke-virtual {v0, v2}, Las;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Las;->a()V

    invoke-virtual {v0}, Las;->c()V

    const-string v2, "woeid"

    iget-wide v3, p0, Lbv;->b:J

    invoke-virtual {v0, v2, v3, v4}, Las;->a(Ljava/lang/String;J)V

    invoke-virtual {v0}, Las;->d()V

    invoke-virtual {v0}, Las;->b()V

    invoke-virtual {v0}, Las;->d()V

    invoke-virtual {v0}, Las;->e()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, ""

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Lbv;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lbv;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
