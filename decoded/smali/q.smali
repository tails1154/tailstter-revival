.class public final Lq;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:J

.field public final e:J

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lq;

.field public k:Z

.field public l:Lac;

.field public final m:Laz;

.field public final n:I

.field public final o:Lal;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lal;Lq;Lac;Laz;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lq;->a:J

    iput-object p5, p0, Lq;->b:Ljava/lang/String;

    iput-object p6, p0, Lq;->c:Ljava/lang/String;

    iput-wide p3, p0, Lq;->d:J

    iput-boolean p12, p0, Lq;->k:Z

    iput-wide p8, p0, Lq;->e:J

    iput-wide p10, p0, Lq;->f:J

    iput-object p7, p0, Lq;->g:Ljava/lang/String;

    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lq;->h:Ljava/lang/String;

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lq;->i:Ljava/lang/String;

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lq;->j:Lq;

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lq;->l:Lac;

    if-eqz p17, :cond_0

    move-wide v0, p3

    move-object/from16 v2, p17

    iput-wide v0, v2, Lac;->r:J

    :cond_0
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lq;->m:Laz;

    move/from16 v0, p19

    move-object v1, p0

    iput v0, v1, Lq;->n:I

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lq;->o:Lal;

    return-void
.end method


# virtual methods
.method public final a()Lq;
    .locals 1

    iget-object v0, p0, Lq;->j:Lq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq;->j:Lq;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method
