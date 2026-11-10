.class final Lcom/twitter/android/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iput p2, p0, Lcom/twitter/android/dq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/twitter/android/dq;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v0}, Lcom/twitter/android/PostActivity;->b(Lcom/twitter/android/PostActivity;)V

    goto :goto_0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v0, -0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iget-wide v0, v0, Lcom/twitter/android/PostActivity;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iget-wide v1, v1, Lcom/twitter/android/PostActivity;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/i;->k(J)V

    :cond_0
    invoke-direct {p0}, Lcom/twitter/android/dq;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    invoke-virtual {v1}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iget-wide v2, v2, Lcom/twitter/android/PostActivity;->g:J

    iget-object v4, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    invoke-static {v4}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/PostActivity;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/PostActivity;

    iget-object v6, v6, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v6}, Lcom/twitter/android/ca;->a()Laz;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;JJLaz;)V

    invoke-direct {p0}, Lcom/twitter/android/dq;->a()V

    goto :goto_0
.end method
