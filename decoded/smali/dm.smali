.class final Ldm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ldm;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ldm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm;->a:Ljava/lang/String;

    iput-object p2, p0, Ldm;->b:Ldm;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a([CII)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Ldm;->a:Ljava/lang/String;

    iget-object v1, p0, Ldm;->b:Ldm;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_2

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_0

    :cond_1
    if-ne v2, p3, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, v0, Ldm;->a:Ljava/lang/String;

    iget-object v0, v0, Ldm;->b:Ldm;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Ldm;
    .locals 1

    iget-object v0, p0, Ldm;->b:Ldm;

    return-object v0
.end method
