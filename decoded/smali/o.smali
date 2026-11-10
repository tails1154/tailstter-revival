.class public final Lo;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final g:Z

.field private static final h:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static final i:Lorg/apache/http/params/HttpParams;

.field private static final j:Lbp;

.field private static k:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final l:[B

.field private static final m:[B

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static final p:[B

.field private static final q:[B

.field private static final r:[Lam;


# instance fields
.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Exception;

.field public f:Lak;

.field private final s:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final t:Lce;

.field private final u:[B

.field private final v:Ljava/io/OutputStream;

.field private w:[Lam;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x7

    const/16 v3, 0x16

    const-string v0, "HttpOperation"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lo;->g:Z

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v0, Lo;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lo;->i:Lorg/apache/http/params/HttpParams;

    new-instance v0, Lbp;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v1}, Lbp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo;->j:Lbp;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lo;->k:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo;->l:[B

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lo;->m:[B

    sget-object v0, Lo;->l:[B

    invoke-static {v3, v0}, Lo;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo;->n:Ljava/lang/String;

    sget-object v0, Lo;->m:[B

    invoke-static {v3, v0}, Lo;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo;->o:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lo;->p:[B

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lo;->q:[B

    const/4 v0, 0x0

    new-array v0, v0, [Lam;

    sput-object v0, Lo;->r:[Lam;

    sget-object v0, Lo;->p:[B

    invoke-static {v4, v0}, Lo;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo;->a:Ljava/lang/String;

    sget-object v0, Lo;->q:[B

    invoke-static {v4, v0}, Lo;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo;->b:Ljava/lang/String;

    sget-object v0, Lo;->i:Lorg/apache/http/params/HttpParams;

    const v1, 0x15f90

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lo;->i:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lo;->i:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lo;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    sget-object v0, Lo;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void

    :array_0
    .array-data 1
        -0x1dt
        -0x58t
        -0x40t
        -0x5ft
        -0x3dt
        -0x59t
        -0x2ct
        -0x44t
        -0x58t
        -0x62t
        -0x20t
        -0x3ft
        -0x1et
        -0x60t
        -0x64t
        -0x3ft
        -0x62t
        -0x50t
        -0x1ft
        -0x61t
    .end array-data

    :array_1
    .array-data 1
        -0x2ct
        -0x4dt
        -0x5dt
        -0x1ft
        -0x23t
        -0x2ft
        -0x30t
        -0x4ct
        -0x4ct
        -0x5dt
        -0x4et
        -0x30t
        -0x20t
        -0x3dt
        -0x56t
        -0x23t
        -0x38t
        -0x51t
        -0x21t
        -0x1bt
        -0x5dt
        -0x57t
        -0x51t
        -0x3dt
        -0x5et
        -0x41t
        -0x2ft
        -0x31t
        -0x61t
        -0x42t
        -0x42t
        -0x35t
        -0x3dt
        -0x54t
        -0x43t
        -0x60t
        -0x3at
        -0x40t
        -0x5et
        -0x21t
        -0x5bt
        -0x63t
        -0x5dt
    .end array-data

    :array_2
    .array-data 1
        -0x66t
        -0x32t
        -0x4at
        -0x6ct
        -0x6bt
        -0x6bt
        -0x66t
        -0x43t
        -0x68t
        -0x3at
        -0x47t
        -0x40t
        -0x4bt
        -0x48t
        -0x3at
        -0x62t
        -0x47t
        -0x44t
        -0x5at
        -0x3ct
        -0x31t
        -0x60t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x6et
        -0x5dt
        -0x67t
        -0x6ct
        -0x5ct
        -0x2at
        -0x42t
        -0x3at
        -0x72t
        -0x4dt
        -0x4at
        -0x67t
        -0x64t
        -0x63t
        -0x29t
        -0x44t
        -0x49t
        -0x5ft
        -0x53t
        -0x5ft
        -0x5ft
        -0x5bt
        -0x32t
        -0x6et
        -0x6ct
        -0x53t
        -0x2ft
        -0x53t
        -0x6at
        -0x4ft
        -0x68t
        -0x51t
        -0x5ct
        -0x5dt
        -0x3dt
        -0x2ct
        -0x68t
        -0x71t
        -0x42t
        -0x4ft
        -0x68t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;Lce;Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lo;->u:[B

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo;->s:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p2, p0, Lo;->t:Lce;

    iput-object p3, p0, Lo;->v:Ljava/io/OutputStream;

    return-void
.end method

.method private static a(B[B)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    sub-int v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Lo;
    .locals 23

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo;->v:Ljava/io/OutputStream;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo;->s:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lo;->t:Lce;

    move-object v5, v0

    new-instance v13, Ljava/util/ArrayList;

    const/4 v7, 0x1

    move/from16 v0, p1

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v14, p1

    :goto_0
    new-instance v15, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v7, Lo;->i:Lorg/apache/http/params/HttpParams;

    sget-object v8, Lo;->h:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v15, v7, v8}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v16, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v7, Lo;->i:Lorg/apache/http/params/HttpParams;

    move-object/from16 v0, v16

    move-object v1, v15

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const-class v7, Lorg/apache/http/client/protocol/RequestAddCookies;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const-class v7, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    sget-object v7, Lo;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lce;->a(Lorg/apache/http/client/methods/HttpRequestBase;JLjava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lo;->g:Z

    if-eqz v7, :cond_0

    const-string v7, "HttpOperation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_0
    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    sget-boolean v17, Lo;->g:Z

    if-eqz v17, :cond_1

    const-string v17, "HttpOperation"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sparse-switch v16, :sswitch_data_0

    const/4 v14, 0x0

    :cond_2
    :goto_1
    :sswitch_0
    if-gtz v14, :cond_7

    const-string v5, "X-RateLimit-Limit"

    invoke-interface {v9, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "X-RateLimit-Remaining"

    invoke-interface {v9, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "X-RateLimit-Reset"

    invoke-interface {v9, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    new-instance v8, Lak;

    move-object v0, v8

    move v1, v7

    move v2, v5

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lak;-><init>(IIJ)V

    move-object v5, v8

    :goto_2
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lo;->f:Lak;

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lo;->a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lad; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object v5, v11

    move-object v6, v10

    move/from16 v7, v16

    :goto_3
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lo;->c:I

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lo;->d:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lo;->e:Ljava/lang/Exception;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lam;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lo;->w:[Lam;

    move-object/from16 v0, p0

    iget-object v0, v0, Lo;->w:[Lam;

    move-object v5, v0

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :sswitch_1
    :try_start_1
    const-string v17, "Date"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    if-eqz v17, :cond_2

    sget-object v18, Lo;->j:Lbp;

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lbp;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sget-object v21, Lo;->k:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v17, v17, v19

    move-object/from16 v0, v21

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_1
    .catch Lad; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    sget-boolean v7, Lo;->g:Z

    if-eqz v7, :cond_3

    const-string v7, "HttpOperation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lad;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v6, 0x1a1

    invoke-virtual {v5}, Lad;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v22, v7

    move v7, v6

    move-object v6, v5

    move-object/from16 v5, v22

    goto/16 :goto_3

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v7, v17, v7

    new-instance v9, Lam;

    move-object v0, v9

    move/from16 v1, v16

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lam;-><init>(ILjava/lang/String;)V

    const/4 v15, 0x0

    iput-object v15, v9, Lam;->b:Ljava/lang/Exception;

    iput-wide v7, v9, Lam;->c:J

    new-instance v7, Lam;

    move-object v0, v7

    move/from16 v1, v16

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lam;-><init>(ILjava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v14, -0x1

    if-gez v7, :cond_9

    move-object v5, v11

    move-object v6, v10

    move/from16 v7, v16

    goto/16 :goto_3

    :catch_1
    move-exception v5

    :try_start_3
    sget-boolean v7, Lo;->g:Z

    if-eqz v7, :cond_8

    const-string v7, "HttpOperation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v22, v7

    move v7, v6

    move-object/from16 v6, v22

    goto/16 :goto_3

    :catchall_0
    move-exception v5

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    throw v5

    :cond_9
    move v14, v7

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x1f6 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    .locals 10

    const v9, 0x7a120

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    sget-boolean v4, Lo;->g:Z

    if-eqz v4, :cond_2

    const-string v4, "HttpOperation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read: Encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v3, :cond_0

    const-string v4, "application/octet-stream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "binary/octet-stream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    move v1, v0

    move-object v0, v2

    :goto_2
    iget-object v2, p0, Lo;->u:[B

    if-ne v1, v8, :cond_c

    move v1, v7

    :cond_4
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v2

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v8, :cond_10

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v4

    if-le v1, v9, :cond_4

    new-instance v2, Lad;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content too large (length unknown): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lad;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    throw v1

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const-string v4, "application/json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v1, :cond_12

    const-string v4, "gzip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v8

    goto :goto_2

    :cond_9
    const-string v4, "text/html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "text/xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "application/xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    if-eqz v1, :cond_12

    const-string v4, "gzip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move v1, v8

    goto/16 :goto_2

    :cond_b
    const-string v1, "image/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-le v1, v9, :cond_e

    :try_start_2
    new-instance v2, Lad;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lad;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    if-lez v3, :cond_e

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_e
    if-lez v1, :cond_f

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v8, :cond_d

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    :goto_4
    const/4 v1, 0x0

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v8, :cond_10

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_10
    if-eqz v0, :cond_11

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_11
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lo;->g:Z

    if-eqz v1, :cond_0

    const-string v1, "HttpOperation"

    const-string v2, "close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-boolean v2, Lo;->g:Z

    if-eqz v2, :cond_6

    const-string v2, "HttpOperation"

    const-string v3, "close"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_12
    move v1, v0

    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Lo;
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lo;->n:Ljava/lang/String;

    sget-object v2, Lo;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lo;->a(ILjava/lang/String;Ljava/lang/String;)Lo;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lo;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lo;->n:Ljava/lang/String;

    sget-object v2, Lo;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lo;->a(ILjava/lang/String;Ljava/lang/String;)Lo;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lo;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lo;->a(ILjava/lang/String;Ljava/lang/String;)Lo;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lo;->c:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()[Lam;
    .locals 1

    iget-object v0, p0, Lo;->w:[Lam;

    if-nez v0, :cond_0

    sget-object v0, Lo;->r:[Lam;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lo;->w:[Lam;

    goto :goto_0
.end method

.method public final d()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    iget-object v0, p0, Lo;->s:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method
