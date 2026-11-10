.class public final Lay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Lay;


# instance fields
.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    new-instance v0, Lay;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lay;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lay;->a:Lay;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lay;-><init>(Ljava/lang/Object;JJII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;JJII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay;->f:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lay;->b:J

    iput-wide p4, p0, Lay;->c:J

    iput p6, p0, Lay;->d:I

    iput p7, p0, Lay;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lay;

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    check-cast p1, Lay;

    iget-object v0, p0, Lay;->f:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p1, Lay;->f:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lay;->f:Ljava/lang/Object;

    iget-object v1, p1, Lay;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget v0, p0, Lay;->d:I

    iget v1, p1, Lay;->d:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lay;->e:I

    iget v1, p1, Lay;->e:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lay;->c:J

    iget-wide v2, p1, Lay;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p0, Lay;->b:J

    iget-wide v2, p1, Lay;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lay;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lay;->d:I

    xor-int/2addr v0, v1

    iget v1, p0, Lay;->e:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lay;->c:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lay;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lay;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lay;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lay;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lay;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lay;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
