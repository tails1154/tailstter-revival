.class final Lcom/twitter/android/dw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dw;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/dw;->a:Lcom/twitter/android/ProfileActivity;

    iget v1, v0, Lcom/twitter/android/ProfileActivity;->c:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/twitter/android/ProfileActivity;->c:I

    iget-object v0, p0, Lcom/twitter/android/dw;->a:Lcom/twitter/android/ProfileActivity;

    const/4 v1, 0x1

    const v2, 0x7f02003a

    const v3, 0x7f0900c6

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    iget-object v0, p0, Lcom/twitter/android/dw;->a:Lcom/twitter/android/ProfileActivity;

    iget-object v1, p0, Lcom/twitter/android/dw;->a:Lcom/twitter/android/ProfileActivity;

    iget-object v1, v1, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/dw;->a:Lcom/twitter/android/ProfileActivity;

    iget-wide v2, v2, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/client/i;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileActivity;->d(Ljava/lang/String;)V

    return-void
.end method
