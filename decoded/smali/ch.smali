.class public final Lch;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lac;

.field public final e:Lac;

.field public final f:Laz;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Lac;Lac;Laz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lch;->a:J

    iput-object p5, p0, Lch;->b:Ljava/lang/String;

    iput-wide p3, p0, Lch;->c:J

    iput-object p6, p0, Lch;->d:Lac;

    iput-object p7, p0, Lch;->e:Lac;

    if-eqz p6, :cond_0

    iput-wide p3, p6, Lac;->r:J

    :cond_0
    if-eqz p7, :cond_1

    iput-wide p3, p7, Lac;->r:J

    :cond_1
    iput-object p8, p0, Lch;->f:Laz;

    return-void
.end method
