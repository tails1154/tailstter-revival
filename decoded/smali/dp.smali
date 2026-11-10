.class public final Ldp;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Ljava/lang/ThreadLocal;


# instance fields
.field private d:Lcn;

.field private e:Ldg;

.field private f:Laj;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Laq;->a()I

    move-result v0

    sput v0, Ldp;->a:I

    invoke-static {}, Lbw;->a()I

    move-result v0

    sput v0, Ldp;->b:I

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ldp;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldp;-><init>(Laj;)V

    return-void
.end method

.method private constructor <init>(Laj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn;->a()Lcn;

    move-result-object v0

    iput-object v0, p0, Ldp;->d:Lcn;

    invoke-static {}, Ldg;->a()Ldg;

    move-result-object v0

    iput-object v0, p0, Ldp;->e:Ldg;

    sget v0, Ldp;->a:I

    iput v0, p0, Ldp;->g:I

    sget v0, Ldp;->b:I

    iput v0, p0, Ldp;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Ldp;->f:Laj;

    return-void
.end method

.method private static a(Ljava/lang/Object;Z)Lr;
    .locals 4

    new-instance v1, Lr;

    sget-object v0, Ldp;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lbx;

    invoke-direct {v0}, Lbx;-><init>()V

    sget-object v2, Ldp;->c:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {v1, v0, p0, p1}, Lr;-><init>(Lbx;Ljava/lang/Object;Z)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbx;

    goto :goto_0
.end method

.method private a(Laq;)Z
    .locals 2

    iget v0, p0, Ldp;->g:I

    invoke-virtual {p1}, Laq;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/Writer;)Las;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldp;->a(Ljava/lang/Object;Z)Lr;

    move-result-object v0

    new-instance v1, Lcv;

    iget v2, p0, Ldp;->h:I

    iget-object v3, p0, Ldp;->f:Laj;

    invoke-direct {v1, v0, v2, v3, p1}, Lcv;-><init>(Lr;ILaj;Ljava/io/Writer;)V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Lbl;
    .locals 8

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v3, v0}, Ldp;->a(Ljava/lang/Object;Z)Lr;

    move-result-object v1

    new-instance v0, Lcq;

    iget v2, p0, Ldp;->g:I

    iget-object v4, p0, Ldp;->f:Laj;

    iget-object v5, p0, Ldp;->d:Lcn;

    sget-object v6, Laq;->h:Laq;

    invoke-direct {p0, v6}, Ldp;->a(Laq;)Z

    move-result v6

    sget-object v7, Laq;->g:Laq;

    invoke-direct {p0, v7}, Ldp;->a(Laq;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcn;->a(ZZ)Lcn;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcq;-><init>(Lr;ILjava/io/Reader;Laj;Lcn;)V

    return-object v0
.end method

.method public final a([B)Lbl;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ldp;->a(Ljava/lang/Object;Z)Lr;

    move-result-object v1

    new-instance v2, Lbs;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3, v0}, Lbs;-><init>(Lr;[BII)V

    iget v0, p0, Ldp;->g:I

    iget-object v1, p0, Ldp;->f:Laj;

    iget-object v3, p0, Ldp;->e:Ldg;

    iget-object v4, p0, Ldp;->d:Lcn;

    invoke-virtual {v2, v0, v1, v3, v4}, Lbs;->a(ILaj;Ldg;Lcn;)Lbl;

    move-result-object v0

    return-object v0
.end method
