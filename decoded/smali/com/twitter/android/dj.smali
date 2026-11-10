.class final Lcom/twitter/android/dj;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/EditProfileActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/EditProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dj;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/EditProfileActivity;Lcom/twitter/android/db;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/dj;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;Lac;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Lcom/twitter/android/EditProfileActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/EditProfileActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p5}, Lcom/twitter/android/client/i;->a(Lac;)V

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Lcom/twitter/android/EditProfileActivity;

    iget-object v0, v0, Lcom/twitter/android/EditProfileActivity;->u:Lcom/twitter/android/client/i;

    iget-wide v1, p5, Lac;->a:J

    iget-object v3, p5, Lac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/i;->e(JLjava/lang/String;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
