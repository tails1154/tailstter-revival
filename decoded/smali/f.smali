.class public final Lf;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:I

.field public final l:Laz;

.field private m:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Laz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf;->a:J

    iput-object p5, p0, Lf;->b:Ljava/lang/String;

    iput-object p6, p0, Lf;->c:Ljava/lang/String;

    iput-object p7, p0, Lf;->d:Ljava/lang/String;

    iput-wide p3, p0, Lf;->e:J

    iput-object p8, p0, Lf;->f:Ljava/lang/String;

    iput-object p9, p0, Lf;->g:Ljava/lang/String;

    iput-object p10, p0, Lf;->h:Ljava/lang/String;

    iput-wide p11, p0, Lf;->m:J

    iput p13, p0, Lf;->j:I

    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lf;->k:I

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lf;->i:Ljava/lang/String;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lf;->l:Laz;

    return-void
.end method
