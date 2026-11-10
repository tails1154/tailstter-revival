.class final Lcom/twitter/android/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/twitter/android/client/i;

.field private synthetic b:Lac;

.field private synthetic c:Lcom/twitter/android/bd;


# direct methods
.method constructor <init>(Lcom/twitter/android/bd;Lcom/twitter/android/client/i;Lac;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/i;->c:Lcom/twitter/android/bd;

    iput-object p2, p0, Lcom/twitter/android/i;->a:Lcom/twitter/android/client/i;

    iput-object p3, p0, Lcom/twitter/android/i;->b:Lac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/i;->c:Lcom/twitter/android/bd;

    iget-object v0, v0, Lcom/twitter/android/bd;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v1, p0, Lcom/twitter/android/i;->a:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/i;->b:Lac;

    iget-object v2, v2, Lac;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/i;->b:Lac;

    iget-wide v3, v3, Lac;->a:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/EditProfileActivity;->b(Ljava/lang/String;)V

    return-void
.end method
